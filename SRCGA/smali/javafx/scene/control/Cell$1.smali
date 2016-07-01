.class Ljavafx/scene/control/Cell$1;
.super Ljava/lang/Object;
.source "Cell.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Cell;-><init>()V
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
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell$1;, "Ljavafx/scene/control/Cell$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Cell;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Cell$1;->this$0:Ljavafx/scene/control/Cell;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Cell$1;, "Ljavafx/scene/control/Cell$1;"
    move-object v1, p1

    .local v1, "property":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Cell$1;->this$0:Ljavafx/scene/control/Cell;

    # getter for: Ljavafx/scene/control/Cell;->PSEUDO_CLASS_FOCUSED:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/Cell;->access$000()Ljavafx/css/PseudoClass;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Cell$1;->this$0:Ljavafx/scene/control/Cell;

    invoke-virtual {v4}, Ljavafx/scene/control/Cell;->isFocused()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Cell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 367
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Cell$1;->this$0:Ljavafx/scene/control/Cell;

    invoke-virtual {v2}, Ljavafx/scene/control/Cell;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Cell$1;->this$0:Ljavafx/scene/control/Cell;

    invoke-virtual {v2}, Ljavafx/scene/control/Cell;->isEditing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Cell$1;->this$0:Ljavafx/scene/control/Cell;

    invoke-virtual {v2}, Ljavafx/scene/control/Cell;->cancelEdit()V

    .line 370
    :cond_0
    return-void
.end method
