.class public final enum Ljava/time/format/FormatStyle;
.super Ljava/lang/Enum;
.source "FormatStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/format/FormatStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/format/FormatStyle;

.field public static final enum FULL:Ljava/time/format/FormatStyle;

.field public static final enum LONG:Ljava/time/format/FormatStyle;

.field public static final enum MEDIUM:Ljava/time/format/FormatStyle;

.field public static final enum SHORT:Ljava/time/format/FormatStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    new-instance v0, Ljava/time/format/FormatStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FULL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    .line 55
    new-instance v0, Ljava/time/format/FormatStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LONG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/FormatStyle;->LONG:Ljava/time/format/FormatStyle;

    .line 60
    new-instance v0, Ljava/time/format/FormatStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MEDIUM"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/FormatStyle;->MEDIUM:Ljava/time/format/FormatStyle;

    .line 65
    new-instance v0, Ljava/time/format/FormatStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SHORT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljava/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/time/format/FormatStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljava/time/format/FormatStyle;->LONG:Ljava/time/format/FormatStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/time/format/FormatStyle;->MEDIUM:Ljava/time/format/FormatStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    aput-object v3, v1, v2

    sput-object v0, Ljava/time/format/FormatStyle;->$VALUES:[Ljava/time/format/FormatStyle;

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
    .line 43
    move-object v0, p0

    .local v0, "this":Ljava/time/format/FormatStyle;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/format/FormatStyle;
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/format/FormatStyle;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/format/FormatStyle;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/format/FormatStyle;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Ljava/time/format/FormatStyle;->$VALUES:[Ljava/time/format/FormatStyle;

    invoke-virtual {v0}, [Ljava/time/format/FormatStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/FormatStyle;

    return-object v0
.end method
