.class Ljavafx/scene/control/TitledPane$2;
.super Ljavafx/css/StyleableBooleanProperty;
.source "TitledPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TitledPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TitledPane;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TitledPane;Z)V
    .locals 5

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TitledPane;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TitledPane$2;->this$0:Ljavafx/scene/control/TitledPane;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane$2;->this$0:Ljavafx/scene/control/TitledPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane$2;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/TitledPane;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane$2;
    # getter for: Ljavafx/scene/control/TitledPane$StyleableProperties;->ANIMATED:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/TitledPane$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane$2;
    const-string v1, "animated"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane$2;
    return-object v0
.end method
