.class Ljavafx/scene/control/Labeled$13;
.super Ljavafx/css/StyleableDoubleProperty;
.source "Labeled.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Labeled;->graphicTextGapProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Labeled;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Labeled;D)V
    .locals 8

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$13;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Labeled;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/Labeled$13;->this$0:Ljavafx/scene/control/Labeled;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 701
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$13;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled$13;->this$0:Ljavafx/scene/control/Labeled;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$13;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Labeled;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$13;
    # getter for: Ljavafx/scene/control/Labeled$StyleableProperties;->GRAPHIC_TEXT_GAP:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Labeled$StyleableProperties;->access$1200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$13;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 706
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$13;
    const-string v1, "graphicTextGap"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$13;
    return-object v0
.end method
