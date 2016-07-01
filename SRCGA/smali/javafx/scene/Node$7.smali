.class Ljavafx/scene/Node$7;
.super Ljavafx/css/StyleableObjectProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->blendModeProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/effect/BlendMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;Ljavafx/scene/effect/BlendMode;)V
    .locals 5

    .prologue
    .line 1294
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$7;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/scene/effect/BlendMode;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$7;->this$0:Ljavafx/scene/Node;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$7;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$7;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$7;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 1301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$7;
    # getter for: Ljavafx/scene/Node$StyleableProperties;->BLEND_MODE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/Node$StyleableProperties;->access$1100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$7;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1311
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$7;
    const-string v1, "blendMode"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$7;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 1296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$7;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$7;->this$0:Ljavafx/scene/Node;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_BLENDMODE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 1297
    return-void
.end method
