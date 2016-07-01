.class public final enum Ljava/time/format/TextStyle;
.super Ljava/lang/Enum;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/format/TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/format/TextStyle;

.field public static final enum FULL:Ljava/time/format/TextStyle;

.field public static final enum FULL_STANDALONE:Ljava/time/format/TextStyle;

.field public static final enum NARROW:Ljava/time/format/TextStyle;

.field public static final enum NARROW_STANDALONE:Ljava/time/format/TextStyle;

.field public static final enum SHORT:Ljava/time/format/TextStyle;

.field public static final enum SHORT_STANDALONE:Ljava/time/format/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 61
    new-instance v0, Ljava/time/format/TextStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FULL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    .line 66
    new-instance v0, Ljava/time/format/TextStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FULL_STANDALONE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    .line 71
    new-instance v0, Ljava/time/format/TextStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SHORT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    .line 76
    new-instance v0, Ljava/time/format/TextStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SHORT_STANDALONE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    .line 81
    new-instance v0, Ljava/time/format/TextStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NARROW"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    .line 86
    new-instance v0, Ljava/time/format/TextStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NARROW_STANDALONE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/time/format/TextStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    aput-object v3, v1, v2

    sput-object v0, Ljava/time/format/TextStyle;->$VALUES:[Ljava/time/format/TextStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljava/time/format/TextStyle;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/format/TextStyle;
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/format/TextStyle;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/format/TextStyle;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/format/TextStyle;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Ljava/time/format/TextStyle;->$VALUES:[Ljava/time/format/TextStyle;

    invoke-virtual {v0}, [Ljava/time/format/TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/TextStyle;

    return-object v0
.end method


# virtual methods
.method public asNormal()Ljava/time/format/TextStyle;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljava/time/format/TextStyle;
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/format/TextStyle;->ordinal()I

    move-result v2

    const/4 v3, -0x2

    and-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/TextStyle;
    return-object v0
.end method

.method public asStandalone()Ljava/time/format/TextStyle;
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljava/time/format/TextStyle;
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/format/TextStyle;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    or-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/TextStyle;
    return-object v0
.end method

.method public isStandalone()Z
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljava/time/format/TextStyle;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/format/TextStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/format/TextStyle;
    return v0

    .restart local v0    # "this":Ljava/time/format/TextStyle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
