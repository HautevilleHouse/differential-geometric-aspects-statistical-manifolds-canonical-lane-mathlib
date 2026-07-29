import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure IndexTheoremPackage where
  atiyahSingerIndex : Prop
  chernGaussBonnet : Prop
  hirzebruchSignature : Prop
  riemannRoch : Prop
  indexDensity : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  atiyahSingerIndexClosed : I.atiyahSingerIndex
  chernGaussBonnetClosed : I.chernGaussBonnet
  hirzebruchSignatureClosed : I.hirzebruchSignature
  riemannRochClosed : I.riemannRoch
  indexDensityClosed : I.indexDensity

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.atiyahSingerIndex ∧ I.chernGaussBonnet ∧ I.hirzebruchSignature ∧
  I.riemannRoch ∧ I.indexDensity

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.atiyahSingerIndexClosed
    (And.intro E.chernGaussBonnetClosed
      (And.intro E.hirzebruchSignatureClosed
        (And.intro E.riemannRochClosed E.indexDensityClosed)))

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse