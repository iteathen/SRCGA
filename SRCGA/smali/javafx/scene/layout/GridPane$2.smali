.class Ljavafx/scene/layout/GridPane$2;
.super Ljavafx/css/StyleableDoubleProperty;
.source "GridPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/GridPane;->vgapProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/GridPane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/GridPane;D)V
    .locals 8

    .prologue
    .line 773
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/GridPane;
    move-wide v2, p2

    .local v2, "initialValue":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/layout/GridPane$2;->this$0:Ljavafx/scene/layout/GridPane;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 786
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$2;->this$0:Ljavafx/scene/layout/GridPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$2;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/GridPane;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$2;
    # getter for: Ljavafx/scene/layout/GridPane$StyleableProperties;->VGAP:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/GridPane$StyleableProperties;->access$100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$2;
    const-string v1, "vgap"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$2;->this$0:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/GridPane;->requestLayout()V

    .line 777
    return-void
.end method
