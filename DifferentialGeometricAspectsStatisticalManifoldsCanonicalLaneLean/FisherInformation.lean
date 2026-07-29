import DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean.StatisticalManifoldCore

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean

structure FisherInformationPackage (M : StatisticalManifold) where
  scoreFunctions : Type
  expectationOperator : scoreFunctions → ℝ
  varianceEstimate : Prop
  nonDegeneracy : Prop

structure FisherInformationEvidence (F : FisherInformationPackage M) where
  varianceEstimateClosed : F.varianceEstimate
  nonDegeneracyClosed : F.nonDegeneracy

def FisherInformationClosed (F : FisherInformationPackage M) : Prop :=
  F.varianceEstimate ∧ F.nonDegeneracy

theorem fisher_information_closed_from_evidence
  (F : FisherInformationPackage M) (E : FisherInformationEvidence F) :
  FisherInformationClosed F := by
  exact And.intro E.varianceEstimateClosed E.nonDegeneracyClosed

end DifferentialGeometricAspectsStatisticalManifoldsCanonicalLaneLean
end HautevilleHouse