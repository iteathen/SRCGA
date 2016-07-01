.class Ljavafx/scene/Node$2;
.super Ljavafx/beans/property/StringPropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->idProperty()Ljavafx/beans/property/StringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 986
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$2;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/StringPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$2;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1003
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$2;
    const-string v1, "id"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 990
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$2;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_reapplyCSS()V

    .line 991
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->printRenderGraph:Z

    if-eqz v1, :cond_0

    .line 992
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$2;->this$0:Ljavafx/scene/Node;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->DEBUG:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 994
    :cond_0
    return-void
.end method
