.class Ljavafx/scene/layout/VBox$3;
.super Ljavafx/css/StyleableBooleanProperty;
.source "VBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/VBox;->fillWidthProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/VBox;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/VBox;Z)V
    .locals 5

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/VBox;
    move v2, p2

    .local v2, "initialValue":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/VBox$3;->this$0:Ljavafx/scene/layout/VBox;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox$3;->this$0:Ljavafx/scene/layout/VBox;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBox$3;
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox$3;
    # getter for: Ljavafx/scene/layout/VBox$StyleableProperties;->FILL_WIDTH:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/VBox$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBox$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox$3;
    const-string v1, "fillWidth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/VBox$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/VBox$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/VBox$3;->this$0:Ljavafx/scene/layout/VBox;

    invoke-virtual {v1}, Ljavafx/scene/layout/VBox;->requestLayout()V

    .line 332
    return-void
.end method
