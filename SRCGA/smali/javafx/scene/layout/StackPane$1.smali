.class Ljavafx/scene/layout/StackPane$1;
.super Ljavafx/css/StyleableObjectProperty;
.source "StackPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/StackPane;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/Pos;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/StackPane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/StackPane;Ljavafx/geometry/Pos;)V
    .locals 5

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/StackPane;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/geometry/Pos;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/StackPane$1;->this$0:Ljavafx/scene/layout/StackPane;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/StackPane$1;->this$0:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/StackPane$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/StackPane;",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane$1;
    # getter for: Ljavafx/scene/layout/StackPane$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/StackPane$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/StackPane$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane$1;
    const-string v1, "alignment"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/StackPane$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/StackPane$1;->this$0:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    .line 227
    return-void
.end method
