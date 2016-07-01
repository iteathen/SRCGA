.class Ljavafx/scene/control/Labeled$3;
.super Ljavafx/css/StyleableObjectProperty;
.source "Labeled.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Labeled;->textOverrunProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/control/OverrunStyle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Labeled;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Labeled;Ljavafx/scene/control/OverrunStyle;)V
    .locals 5

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Labeled;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/control/OverrunStyle;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Labeled$3;->this$0:Ljavafx/scene/control/Labeled;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled$3;->this$0:Ljavafx/scene/control/Labeled;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$3;
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
            "Ljavafx/scene/control/OverrunStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$3;
    # getter for: Ljavafx/scene/control/Labeled$StyleableProperties;->TEXT_OVERRUN:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Labeled$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$3;
    const-string v1, "textOverrun"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$3;
    return-object v0
.end method
