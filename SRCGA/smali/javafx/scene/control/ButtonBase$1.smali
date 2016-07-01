.class Ljavafx/scene/control/ButtonBase$1;
.super Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.source "ButtonBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ButtonBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ButtonBase;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ButtonBase;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ButtonBase;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ButtonBase$1;->this$0:Ljavafx/scene/control/ButtonBase;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ButtonBase$1;->this$0:Ljavafx/scene/control/ButtonBase;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBase$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase$1;
    const-string v1, "armed"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBase$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBase$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ButtonBase$1;->this$0:Ljavafx/scene/control/ButtonBase;

    # getter for: Ljavafx/scene/control/ButtonBase;->ARMED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/ButtonBase;->access$000()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBase$1;->get()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ButtonBase;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 101
    return-void
.end method
