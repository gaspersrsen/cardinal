/********************************************************************/
/*                  SOFTWARE COPYRIGHT NOTIFICATION                 */
/*                             Cardinal                             */
/*                                                                  */
/*                  (c) 2021 UChicago Argonne, LLC                  */
/*                        ALL RIGHTS RESERVED                       */
/*                                                                  */
/*                 Prepared by UChicago Argonne, LLC                */
/*               Under Contract No. DE-AC02-06CH11357               */
/*                With the U. S. Department of Energy               */
/*                                                                  */
/*             Prepared by Battelle Energy Alliance, LLC            */
/*               Under Contract No. DE-AC07-05ID14517               */
/*                With the U. S. Department of Energy               */
/*                                                                  */
/*                 See LICENSE for full restrictions                */
/********************************************************************/

#pragma once

#include "OpenMCAuxKernel.h"
#include "OpenMCCellAverageProblem.h"

/**
 * Auxkernel to display the mapping of OpenMC cell instances to elements.
 */
class CellInstanceAux : public OpenMCAuxKernel
{
public:
  CellInstanceAux(const InputParameters & parameters);

  static InputParameters validParams();

protected:
  virtual Real computeValue();
};
