const {ccclass, property} = cc._decorator;

@ccclass
export default class Helloworld extends cc.Component {

    @property(cc.Node)
    player: cc.Node = null;

    start () {
        // init logic
        
        this.node.on(cc.Node.EventType.MOUSE_DOWN, (event: cc.Event.EventMouse) => {
            
            if (this.player) {
                const move = cc.moveTo (1, event.getLocation())
                
                this.player.runAction(move)
            }
            cc.log(event.getLocation())
            cc.log(this.node.getAnchorPoint())
        })
    }
}
