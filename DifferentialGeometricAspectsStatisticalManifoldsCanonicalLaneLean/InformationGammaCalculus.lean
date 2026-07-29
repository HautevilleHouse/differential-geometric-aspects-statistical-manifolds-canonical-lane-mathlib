import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure InformationGammaCalculus where
  gammaOperator : Type u
  gammaOne : Prop
  gammaTwo : Prop
  bochnerFormula : Prop
  curvatureIdentities : Prop

structure InformationGammaCalculusEvidence (G : InformationGammaCalculus) where
  gammaOneClosed : G.gammaOne
  gammaTwoClosed : G.gammaTwo
  bochnerFormulaClosed : G.bochnerFormula
  curvatureIdentitiesClosed : G.curvatureIdentities

def InformationGammaCalculusClosed (G : InformationGammaCalculus) : Prop :=
  G.gammaOne ∧ G.gammaTwo ∧ G.bochnerFormula ∧ G.curvatureIdentities

theorem information_gamma_calculus_closed_from_evidence
    (G : InformationGammaCalculus) (E : InformationGammaCalculusEvidence G) :
    InformationGammaCalculusClosed G := by
  exact And.intro E.gammaOneClosed
    (And.intro E.gammaTwoClosed
      (And.intro E.bochnerFormulaClosed E.curvatureIdentitiesClosed))

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse