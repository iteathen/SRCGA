.class Ljavafx/scene/control/MenuButton$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "MenuButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/MenuButton;->popupSideProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/scene/control/MenuButton;


# direct methods
.method constructor <init>(Ljavafx/scene/control/MenuButton;Ljavafx/geometry/Side;)V
    .locals 5

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/MenuButton;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/Side;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/MenuButton$2;->this$0:Ljavafx/scene/control/MenuButton;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuButton$2;->this$0:Ljavafx/scene/control/MenuButton;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuButton$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton$2;
    const-string v1, "popupSide"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuButton$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton$2;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton$2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/geometry/Side;

    move-object v1, v3

    .line 253
    .local v1, "side":Ljavafx/geometry/Side;
    move-object v3, v1

    sget-object v4, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-eq v3, v4, :cond_0

    move-object v3, v1

    sget-object v4, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 254
    .local v2, "active":Z
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MenuButton$2;->this$0:Ljavafx/scene/control/MenuButton;

    # getter for: Ljavafx/scene/control/MenuButton;->PSEUDO_CLASS_OPENVERTICALLY:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/MenuButton;->access$100()Ljavafx/css/PseudoClass;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/MenuButton;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 255
    return-void

    .line 253
    .end local v2    # "active":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
