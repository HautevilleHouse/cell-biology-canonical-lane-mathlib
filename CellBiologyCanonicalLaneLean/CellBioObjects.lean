import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CellBioSystem where
  carrier : Type
  biologyStructure : Prop

default CellBioSystem where
  carrier := Unit
  biologyStructure := True

structure CellBioAdmittedObject where
  system : CellBioSystem
  keyResult : Prop
  evidence : keyResult

default CellBioAdmittedObject where
  system := default
  keyResult := True
  evidence := trivial

structure CellBioEndgameState where
  object : CellBioAdmittedObject

def CellBioWitnessClosed (O : CellBioAdmittedObject) : Prop :=
  O.keyResult

end CellBiologyCanonicalLaneLean
end HautevilleHouse