.class Ljavafx/scene/control/Tooltip$3;
.super Ljavafx/css/StyleableObjectProperty;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Tooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Tooltip;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Tooltip;)V
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Tooltip;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Tooltip$3;->this$0:Ljavafx/scene/control/Tooltip;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableObjectProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip$3;->this$0:Ljavafx/scene/control/Tooltip;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip$3;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$3;
    # getter for: Ljavafx/scene/control/Tooltip;->GRAPHIC:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$700()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$3;
    const-string v1, "graphic"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip$3;
    return-object v0
.end method
