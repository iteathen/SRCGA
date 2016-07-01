.class Ljavafx/scene/image/ImageView$StyleableProperties;
.super Ljava/lang/Object;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final IMAGE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/image/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STYLEABLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 791
    new-instance v1, Ljavafx/scene/image/ImageView$StyleableProperties$1;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "-fx-image"

    .line 793
    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavafx/scene/image/ImageView$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    sput-object v1, Ljavafx/scene/image/ImageView$StyleableProperties;->IMAGE:Ljavafx/css/CssMetaData;

    .line 809
    new-instance v1, Ljava/util/ArrayList;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    .line 810
    invoke-static {}, Ljavafx/scene/Node;->getClassCssMetaData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 811
    .local v0, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v1, v0

    sget-object v2, Ljavafx/scene/image/ImageView$StyleableProperties;->IMAGE:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 812
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljavafx/scene/image/ImageView$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 813
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/ImageView$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2300()Ljava/util/List;
    .locals 1

    .prologue
    .line 788
    sget-object v0, Ljavafx/scene/image/ImageView$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 788
    sget-object v0, Ljavafx/scene/image/ImageView$StyleableProperties;->IMAGE:Ljavafx/css/CssMetaData;

    return-object v0
.end method
