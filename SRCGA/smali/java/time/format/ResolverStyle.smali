.class public final enum Ljava/time/format/ResolverStyle;
.super Ljava/lang/Enum;
.source "ResolverStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/format/ResolverStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/format/ResolverStyle;

.field public static final enum LENIENT:Ljava/time/format/ResolverStyle;

.field public static final enum SMART:Ljava/time/format/ResolverStyle;

.field public static final enum STRICT:Ljava/time/format/ResolverStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 58
    new-instance v0, Ljava/time/format/ResolverStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STRICT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 71
    new-instance v0, Ljava/time/format/ResolverStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SMART"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    .line 82
    new-instance v0, Ljava/time/format/ResolverStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LENIENT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/time/format/ResolverStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    aput-object v3, v1, v2

    sput-object v0, Ljava/time/format/ResolverStyle;->$VALUES:[Ljava/time/format/ResolverStyle;

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
    .line 45
    move-object v0, p0

    .local v0, "this":Ljava/time/format/ResolverStyle;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/format/ResolverStyle;
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/format/ResolverStyle;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/format/ResolverStyle;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/format/ResolverStyle;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Ljava/time/format/ResolverStyle;->$VALUES:[Ljava/time/format/ResolverStyle;

    invoke-virtual {v0}, [Ljava/time/format/ResolverStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/ResolverStyle;

    return-object v0
.end method
