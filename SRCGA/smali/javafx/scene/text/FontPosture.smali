.class public final enum Ljavafx/scene/text/FontPosture;
.super Ljava/lang/Enum;
.source "FontPosture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/text/FontPosture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/text/FontPosture;

.field public static final enum ITALIC:Ljavafx/scene/text/FontPosture;

.field public static final enum REGULAR:Ljavafx/scene/text/FontPosture;


# instance fields
.field private final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 36
    new-instance v0, Ljavafx/scene/text/FontPosture;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string v2, "REGULAR"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const-string v7, "regular"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/text/FontPosture;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/text/FontPosture;->REGULAR:Ljavafx/scene/text/FontPosture;

    .line 40
    new-instance v0, Ljavafx/scene/text/FontPosture;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string v2, "ITALIC"

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "italic"

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/text/FontPosture;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/text/FontPosture;->ITALIC:Ljavafx/scene/text/FontPosture;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljavafx/scene/text/FontPosture;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/text/FontPosture;->REGULAR:Ljavafx/scene/text/FontPosture;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/text/FontPosture;->ITALIC:Ljavafx/scene/text/FontPosture;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/text/FontPosture;->$VALUES:[Ljavafx/scene/text/FontPosture;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/FontPosture;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "names":[Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/text/FontPosture;->names:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static findByName(Ljava/lang/String;)Ljavafx/scene/text/FontPosture;
    .locals 11

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v9, v0

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move-object v0, v9

    .line 62
    .end local v0    # "name":Ljava/lang/String;
    .local v4, "s":Ljavafx/scene/text/FontPosture;
    .local v8, "n":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 56
    .end local v4    # "s":Ljavafx/scene/text/FontPosture;
    .end local v8    # "n":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljavafx/scene/text/FontPosture;->values()[Ljavafx/scene/text/FontPosture;

    move-result-object v9

    move-object v1, v9

    move-object v9, v1

    array-length v9, v9

    move v2, v9

    const/4 v9, 0x0

    move v3, v9

    :goto_1
    move v9, v3

    move v10, v2

    if-ge v9, v10, :cond_3

    move-object v9, v1

    move v10, v3

    aget-object v9, v9, v10

    move-object v4, v9

    .line 57
    .restart local v4    # "s":Ljavafx/scene/text/FontPosture;
    move-object v9, v4

    iget-object v9, v9, Ljavafx/scene/text/FontPosture;->names:[Ljava/lang/String;

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_2

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 58
    .restart local v8    # "n":Ljava/lang/String;
    move-object v9, v8

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v4

    move-object v0, v9

    goto :goto_0

    .line 57
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 56
    .end local v8    # "n":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v4    # "s":Ljavafx/scene/text/FontPosture;
    :cond_3
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/text/FontPosture;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/text/FontPosture;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/FontPosture;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/text/FontPosture;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ljavafx/scene/text/FontPosture;->$VALUES:[Ljavafx/scene/text/FontPosture;

    invoke-virtual {v0}, [Ljavafx/scene/text/FontPosture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/text/FontPosture;

    return-object v0
.end method
