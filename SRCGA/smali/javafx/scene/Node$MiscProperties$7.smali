.class Ljavafx/scene/Node$MiscProperties$7;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node$MiscProperties;->depthTestProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/DepthTest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/Node$MiscProperties;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$MiscProperties;Ljavafx/scene/DepthTest;)V
    .locals 5

    .prologue
    .line 6684
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$7;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$MiscProperties;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/DepthTest;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$MiscProperties$7;->this$1:Ljavafx/scene/Node$MiscProperties;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6691
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$7;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties$7;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$7;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6696
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$7;
    const-string v1, "depthTest"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$7;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 6686
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$7;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties$7;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->computeDerivedDepthTest()V

    .line 6687
    return-void
.end method
