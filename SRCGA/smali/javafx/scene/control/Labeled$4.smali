.class Ljavafx/scene/control/Labeled$4;
.super Ljavafx/css/StyleableStringProperty;
.source "Labeled.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Labeled;->ellipsisStringProperty()Ljavafx/beans/property/StringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Labeled;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Labeled;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Labeled;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Labeled$4;->this$0:Ljavafx/scene/control/Labeled;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableStringProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled$4;->this$0:Ljavafx/scene/control/Labeled;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$4;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$4;
    # getter for: Ljavafx/scene/control/Labeled$StyleableProperties;->ELLIPSIS_STRING:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Labeled$StyleableProperties;->access$300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$4;
    const-string v1, "ellipsisString"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$4;
    return-object v0
.end method
