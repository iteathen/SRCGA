.class Ljavafx/scene/layout/VBox$1;
.super Ljavafx/css/StyleableDoubleProperty;
.source "VBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/VBox;->spacingProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/VBox;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/VBox;)V
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/VBox;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/VBox$1;->this$0:Ljavafx/scene/layout/VBox;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableDoubleProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox$1;->this$0:Ljavafx/scene/layout/VBox;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBox$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/VBox;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox$1;
    # getter for: Ljavafx/scene/layout/VBox$StyleableProperties;->SPACING:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/VBox$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBox$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox$1;
    const-string v1, "spacing"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBox$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox$1;->this$0:Ljavafx/scene/layout/VBox;

    invoke-virtual {v1}, Ljavafx/scene/layout/VBox;->requestLayout()V

    .line 258
    return-void
.end method
