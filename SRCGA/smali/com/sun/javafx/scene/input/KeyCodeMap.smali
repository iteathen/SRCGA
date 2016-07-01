.class public final Lcom/sun/javafx/scene/input/KeyCodeMap;
.super Ljava/lang/Object;
.source "KeyCodeMap.java"


# static fields
.field private static final charMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/scene/input/KeyCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 44
    new-instance v4, Ljava/util/HashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-static {}, Ljavafx/scene/input/KeyCode;->values()[Ljavafx/scene/input/KeyCode;

    move-result-object v6

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lcom/sun/javafx/scene/input/KeyCodeMap;->charMap:Ljava/util/Map;

    .line 46
    invoke-static {}, Ljavafx/scene/input/KeyCode;->values()[Ljavafx/scene/input/KeyCode;

    move-result-object v4

    move-object v0, v4

    move-object v4, v0

    array-length v4, v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    .local v3, "c":Ljavafx/scene/input/KeyCode;
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 47
    sget-object v4, Lcom/sun/javafx/scene/input/KeyCodeMap;->charMap:Ljava/util/Map;

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/input/KeyCodeMap;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static valueOf(I)Ljavafx/scene/input/KeyCode;
    .locals 3

    .prologue
    .line 52
    move v0, p0

    .local v0, "code":I
    sget-object v1, Lcom/sun/javafx/scene/input/KeyCodeMap;->charMap:Ljava/util/Map;

    move v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    .end local v0    # "code":I
    return-object v0
.end method
