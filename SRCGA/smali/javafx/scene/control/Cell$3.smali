.class Ljavafx/scene/control/Cell$3;
.super Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.source "Cell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Cell;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Cell;)V
    .locals 4

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell$3;, "Ljavafx/scene/control/Cell$3;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Cell;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Cell$3;->this$0:Ljavafx/scene/control/Cell;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell$3;, "Ljavafx/scene/control/Cell$3;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell$3;->this$0:Ljavafx/scene/control/Cell;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell$3;, "Ljavafx/scene/control/Cell$3;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell$3;, "Ljavafx/scene/control/Cell$3;"
    const-string v1, "selected"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell$3;, "Ljavafx/scene/control/Cell$3;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell$3;, "Ljavafx/scene/control/Cell$3;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell$3;->this$0:Ljavafx/scene/control/Cell;

    # getter for: Ljavafx/scene/control/Cell;->PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/Cell;->access$300()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Cell$3;->get()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/Cell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 457
    return-void
.end method
