.class Ljavafx/scene/layout/HBox$3;
.super Ljavafx/css/StyleableBooleanProperty;
.source "HBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/HBox;->fillHeightProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/HBox;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/HBox;Z)V
    .locals 5

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/HBox;
    move v2, p2

    .local v2, "initialValue":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/HBox$3;->this$0:Ljavafx/scene/layout/HBox;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox$3;->this$0:Ljavafx/scene/layout/HBox;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox$3;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/HBox;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox$3;
    # getter for: Ljavafx/scene/layout/HBox$StyleableProperties;->FILL_HEIGHT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/HBox$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox$3;
    const-string v1, "fillHeight"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/HBox$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/HBox$3;->this$0:Ljavafx/scene/layout/HBox;

    invoke-virtual {v1}, Ljavafx/scene/layout/HBox;->requestLayout()V

    .line 348
    return-void
.end method
