.class Ljavafx/scene/control/Cell$2;
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
.method constructor <init>(Ljavafx/scene/control/Cell;Z)V
    .locals 5

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell$2;, "Ljavafx/scene/control/Cell$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Cell;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Cell$2;->this$0:Ljavafx/scene/control/Cell;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell$2;, "Ljavafx/scene/control/Cell$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Cell$2;->this$0:Ljavafx/scene/control/Cell;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell$2;, "Ljavafx/scene/control/Cell$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell$2;, "Ljavafx/scene/control/Cell$2;"
    const-string v1, "empty"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Cell$2;, "Ljavafx/scene/control/Cell$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell$2;, "Ljavafx/scene/control/Cell$2;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Cell$2;->get()Z

    move-result v2

    move v1, v2

    .line 416
    .local v1, "active":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Cell$2;->this$0:Ljavafx/scene/control/Cell;

    # getter for: Ljavafx/scene/control/Cell;->PSEUDO_CLASS_EMPTY:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/Cell;->access$100()Ljavafx/css/PseudoClass;

    move-result-object v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Cell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 417
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Cell$2;->this$0:Ljavafx/scene/control/Cell;

    # getter for: Ljavafx/scene/control/Cell;->PSEUDO_CLASS_FILLED:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/Cell;->access$200()Ljavafx/css/PseudoClass;

    move-result-object v3

    move v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Cell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 418
    return-void

    .line 417
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
