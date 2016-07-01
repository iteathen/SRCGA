.class Ljavafx/scene/layout/HBox$1;
.super Ljavafx/css/StyleableDoubleProperty;
.source "HBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/HBox;->spacingProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/HBox;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/HBox;)V
    .locals 4

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/HBox;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/HBox$1;->this$0:Ljavafx/scene/layout/HBox;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableDoubleProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox$1;->this$0:Ljavafx/scene/layout/HBox;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox$1;
    # getter for: Ljavafx/scene/layout/HBox$StyleableProperties;->SPACING:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/HBox$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox$1;
    const-string v1, "spacing"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox$1;->this$0:Ljavafx/scene/layout/HBox;

    invoke-virtual {v1}, Ljavafx/scene/layout/HBox;->requestLayout()V

    .line 273
    return-void
.end method
