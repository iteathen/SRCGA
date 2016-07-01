.class final Ljavafx/scene/control/Tooltip$CSSBridge;
.super Ljavafx/scene/control/PopupControl$CSSBridge;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Tooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CSSBridge"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Tooltip;

.field private tooltip:Ljavafx/scene/control/Tooltip;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Tooltip;)V
    .locals 4

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$CSSBridge;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Tooltip$CSSBridge;->this$0:Ljavafx/scene/control/Tooltip;

    .line 667
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/PopupControl$CSSBridge;-><init>(Ljavafx/scene/control/PopupControl;)V

    .line 664
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Tooltip$CSSBridge;->this$0:Ljavafx/scene/control/Tooltip;

    iput-object v3, v2, Ljavafx/scene/control/Tooltip$CSSBridge;->tooltip:Ljavafx/scene/control/Tooltip;

    .line 668
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->TOOLTIP:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Tooltip$CSSBridge;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 669
    return-void
.end method

.method static synthetic access$900(Ljavafx/scene/control/Tooltip$CSSBridge;)Ljavafx/scene/control/Tooltip;
    .locals 2

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Tooltip$CSSBridge;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip$CSSBridge;->tooltip:Ljavafx/scene/control/Tooltip;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Tooltip$CSSBridge;
    return-object v0
.end method
