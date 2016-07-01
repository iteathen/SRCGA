.class Ljavafx/scene/Node$5;
.super Ljavafx/css/StyleableBooleanProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->visibleProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field oldValue:Z

.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;Z)V
    .locals 5

    .prologue
    .line 1147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move v2, p2

    .local v2, "initialValue":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$5;->this$0:Ljavafx/scene/Node;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    .line 1148
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/Node$5;->oldValue:Z

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$5;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$5;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 1167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$5;
    # getter for: Ljavafx/scene/Node$StyleableProperties;->VISIBILITY:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/Node$StyleableProperties;->access$900()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$5;
    const-string v1, "visible"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$5;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 1151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$5;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node$5;->oldValue:Z

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node$5;->get()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1152
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$5;->this$0:Ljavafx/scene/Node;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_VISIBLE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 1153
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$5;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_geomChanged()V

    .line 1154
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$5;->this$0:Ljavafx/scene/Node;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/Node;->access$600(Ljavafx/scene/Node;Z)V

    .line 1155
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$5;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1159
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$5;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$5;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1, v2}, Ljavafx/scene/Parent;->childVisibilityChanged(Ljavafx/scene/Node;)V

    .line 1161
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node$5;->get()Z

    move-result v2

    iput-boolean v2, v1, Ljavafx/scene/Node$5;->oldValue:Z

    .line 1163
    :cond_1
    return-void
.end method
