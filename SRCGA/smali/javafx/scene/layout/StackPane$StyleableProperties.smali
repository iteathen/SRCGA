.class Ljavafx/scene/layout/StackPane$StyleableProperties;
.super Ljava/lang/Object;
.source "StackPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/StackPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final ALIGNMENT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/StackPane;",
            "Ljavafx/geometry/Pos;",
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
    .locals 8

    .prologue
    .line 362
    new-instance v1, Ljavafx/scene/layout/StackPane$StyleableProperties$1;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-alignment"

    new-instance v4, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-class v6, Ljavafx/geometry/Pos;

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    sget-object v5, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/layout/StackPane$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/geometry/Pos;)V

    sput-object v1, Ljavafx/scene/layout/StackPane$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;

    .line 381
    new-instance v1, Ljava/util/ArrayList;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    .line 382
    invoke-static {}, Ljavafx/scene/layout/Region;->getClassCssMetaData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 383
    .local v0, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v1, v0

    sget-object v2, Ljavafx/scene/layout/StackPane$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 384
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljavafx/scene/layout/StackPane$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 385
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 361
    sget-object v0, Ljavafx/scene/layout/StackPane$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .prologue
    .line 361
    sget-object v0, Ljavafx/scene/layout/StackPane$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method
