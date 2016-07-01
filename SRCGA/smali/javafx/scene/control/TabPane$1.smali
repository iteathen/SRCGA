.class Ljavafx/scene/control/TabPane$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "TabPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TabPane;->sideProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/geometry/Side;",
        ">;"
    }
.end annotation


# instance fields
.field private oldSide:Ljavafx/geometry/Side;

.field final synthetic this$0:Ljavafx/scene/control/TabPane;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TabPane;Ljavafx/geometry/Side;)V
    .locals 5

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TabPane;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/Side;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TabPane$1;->this$0:Ljavafx/scene/control/TabPane;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane$1;->this$0:Ljavafx/scene/control/TabPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$1;
    const-string v1, "side"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane$1;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/geometry/Side;

    iput-object v2, v1, Ljavafx/scene/control/TabPane$1;->oldSide:Ljavafx/geometry/Side;

    .line 221
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane$1;->this$0:Ljavafx/scene/control/TabPane;

    # getter for: Ljavafx/scene/control/TabPane;->TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/TabPane;->access$000()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TabPane$1;->oldSide:Ljavafx/geometry/Side;

    sget-object v4, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TabPane$1;->oldSide:Ljavafx/geometry/Side;

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TabPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 222
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane$1;->this$0:Ljavafx/scene/control/TabPane;

    # getter for: Ljavafx/scene/control/TabPane;->RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/TabPane;->access$100()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TabPane$1;->oldSide:Ljavafx/geometry/Side;

    sget-object v4, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TabPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 223
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane$1;->this$0:Ljavafx/scene/control/TabPane;

    # getter for: Ljavafx/scene/control/TabPane;->BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/TabPane;->access$200()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TabPane$1;->oldSide:Ljavafx/geometry/Side;

    sget-object v4, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TabPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 224
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane$1;->this$0:Ljavafx/scene/control/TabPane;

    # getter for: Ljavafx/scene/control/TabPane;->LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/TabPane;->access$300()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TabPane$1;->oldSide:Ljavafx/geometry/Side;

    sget-object v4, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TabPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 225
    return-void

    .line 221
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 222
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 223
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 224
    :cond_4
    const/4 v3, 0x0

    goto :goto_3
.end method
