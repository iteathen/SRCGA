.class Ljavafx/scene/Node$MiscProperties$6;
.super Ljavafx/css/StyleableObjectProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node$MiscProperties;->cursorProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/Node$MiscProperties;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$MiscProperties;Ljavafx/scene/Cursor;)V
    .locals 5

    .prologue
    .line 6647
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$6;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$MiscProperties;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/scene/Cursor;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$MiscProperties$6;->this$1:Ljavafx/scene/Node$MiscProperties;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6664
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties$6;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$6;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 6659
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$6;
    # getter for: Ljavafx/scene/Node$StyleableProperties;->CURSOR:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/Node$StyleableProperties;->access$3700()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6669
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$6;
    const-string v1, "cursor"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$6;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 6651
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$6;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$MiscProperties$6;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v2, v2, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    move-object v1, v2

    .line 6652
    .local v1, "sceneValue":Ljavafx/scene/Scene;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 6653
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Scene;->markCursorDirty()V

    .line 6655
    :cond_0
    return-void
.end method
