.class Ljavafx/scene/control/Labeled$11;
.super Ljavafx/css/StyleableObjectProperty;
.source "Labeled.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Labeled;->contentDisplayProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/control/ContentDisplay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Labeled;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Labeled;Ljavafx/scene/control/ContentDisplay;)V
    .locals 5

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$11;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Labeled;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/control/ContentDisplay;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Labeled$11;->this$0:Ljavafx/scene/control/Labeled;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$11;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled$11;->this$0:Ljavafx/scene/control/Labeled;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$11;
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
            "Ljavafx/scene/control/ContentDisplay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$11;
    # getter for: Ljavafx/scene/control/Labeled$StyleableProperties;->CONTENT_DISPLAY:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Labeled$StyleableProperties;->access$1000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$11;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$11;
    const-string v1, "contentDisplay"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$11;
    return-object v0
.end method
