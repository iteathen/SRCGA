.class Ljavafx/scene/control/TextInputControl$6;
.super Ljavafx/beans/property/SimpleBooleanProperty;
.source "TextInputControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextInputControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TextInputControl;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TextInputControl;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TextInputControl;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move v4, p4

    .local v4, "x2":Z
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/TextInputControl$6;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$6;->this$0:Ljavafx/scene/control/TextInputControl;

    # getter for: Ljavafx/scene/control/TextInputControl;->PSEUDO_CLASS_READONLY:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/TextInputControl;->access$500()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl$6;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TextInputControl;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 365
    return-void

    .line 364
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
