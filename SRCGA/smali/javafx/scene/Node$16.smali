.class Ljavafx/scene/Node$16;
.super Ljavafx/css/StyleableBooleanProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;Z)V
    .locals 5

    .prologue
    .line 7817
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$16;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move v2, p2

    .local v2, "initialValue":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$16;->this$0:Ljavafx/scene/Node;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 7837
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$16;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$16;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$16;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 7832
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$16;
    # getter for: Ljavafx/scene/Node$StyleableProperties;->FOCUS_TRAVERSABLE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/Node$StyleableProperties;->access$4700()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$16;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7842
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$16;
    const-string v1, "focusTraversable"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$16;
    return-object v0
.end method

.method public invalidated()V
    .locals 4

    .prologue
    .line 7821
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$16;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$16;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    move-object v1, v2

    .line 7822
    .local v1, "_scene":Ljavafx/scene/Scene;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 7823
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node$16;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7824
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Scene;->initializeInternalEventDispatcher()V

    .line 7826
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$16;->this$0:Ljavafx/scene/Node;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/Node;->access$1400(Ljavafx/scene/Node;Ljavafx/scene/Scene;)V

    .line 7828
    :cond_1
    return-void
.end method
