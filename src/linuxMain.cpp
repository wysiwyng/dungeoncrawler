#include "Polycode.h"
#include "PolycodeView.h"
#include "dungeonCore.h"

int main(int argc, char *argv[]) {
	PolycodeView *view = new PolycodeView("Hello Polycode!");
	DungeonCore *app = new DungeonCore(view);
	while(app->Update()) {}
	return 0;
}
