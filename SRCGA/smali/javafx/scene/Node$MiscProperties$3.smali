.class Ljavafx/scene/Node$MiscProperties$3;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node$MiscProperties;->cacheProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/Node$MiscProperties;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$MiscProperties;Z)V
    .locals 5

    .prologue
    .line 6511
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$3;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$MiscProperties;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$MiscProperties$3;->this$1:Ljavafx/scene/Node$MiscProperties;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6519
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties$3;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6524
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$3;
    const-string v1, "cache"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 6514
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties$3;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_CACHE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 6515
    return-void
.end method
