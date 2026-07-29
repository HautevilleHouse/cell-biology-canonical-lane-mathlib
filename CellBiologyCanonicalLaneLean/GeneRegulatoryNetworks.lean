import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  geneList : List String
  regulationMatrix : List (List Float)
  booleanDynamics : Prop
  attractors : List (List Bool)
  stability : Prop
  robustness : Prop
  differentiationDynamics : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  booleanDynamicsClosed : G.booleanDynamics
  attractorsClosed : G.attractors ≠ []
  stabilityClosed : G.stability

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.booleanDynamics ∧ G.attractors ≠ [] ∧ G.stability

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage)
    (E : GeneRegulatoryNetworkEvidence G) : GeneRegulatoryNetworkClosed G := by
  exact And.intro E.booleanDynamicsClosed
    (And.intro E.attractorsClosed E.stabilityClosed)

end CellBiologyCanonicalLaneLean
end HautevilleHouse