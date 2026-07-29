import DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure DivergenceGeometryPackage (M : StatisticalManifold) (C : AmariChentsovConnection M) (CI : CurvatureInvariantsPackage M C) where
  bregmanDivergence : Type
  hellingerDivergence : Type
  klDivergence : Type
  divergenceCurvatureRelation : Prop
  dualFlatnessCondition : Prop

structure DivergenceGeometryEvidence (DG : DivergenceGeometryPackage M C CI) where
  divergenceCurvatureRelationClosed : DG.divergenceCurvatureRelation
  dualFlatnessConditionClosed : DG.dualFlatnessCondition

def DivergenceGeometryClosed (DG : DivergenceGeometryPackage M C CI) : Prop :=
  DG.divergenceCurvatureRelation ∧ DG.dualFlatnessCondition

theorem divergence_geometry_closed_from_evidence
  (DG : DivergenceGeometryPackage M C CI) (E : DivergenceGeometryEvidence DG) :
  DivergenceGeometryClosed DG := by
  exact And.intro E.divergenceCurvatureRelationClosed E.dualFlatnessConditionClosed

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse