#include "PolycodeView.h"
#include "Polycode.h"

using namespace Polycode;

class DungeonCore {
public:
	DungeonCore(PolycodeView *view);
	~DungeonCore();
    
    bool Update();
    
private:
    Core *core;
};