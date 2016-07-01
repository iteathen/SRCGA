.class public final enum Lsun/util/logging/PlatformLogger$Level;
.super Ljava/lang/Enum;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/util/logging/PlatformLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/util/logging/PlatformLogger$Level;

.field public static final enum ALL:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum CONFIG:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum FINE:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum FINER:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum FINEST:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum INFO:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum OFF:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum SEVERE:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum WARNING:Lsun/util/logging/PlatformLogger$Level;

.field private static final levelValues:[I


# instance fields
.field javaLevel:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 109
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ALL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    .line 110
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FINEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    .line 111
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FINER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    .line 112
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FINE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    .line 113
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CONFIG"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    .line 114
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INFO"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    .line 115
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "WARNING"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    .line 116
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SEVERE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    .line 117
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OFF"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    .line 106
    const/16 v0, 0x9

    new-array v0, v0, [Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    aput-object v3, v1, v2

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->$VALUES:[Lsun/util/logging/PlatformLogger$Level;

    .line 128
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->levelValues:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x80000000
        0x12c
        0x190
        0x1f4
        0x2bc
        0x320
        0x384
        0x3e8
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$Level;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static valueOf(I)Lsun/util/logging/PlatformLogger$Level;
    .locals 6

    .prologue
    .line 139
    move v0, p0

    .local v0, "level":I
    move v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 154
    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->levelValues:[I

    const/4 v3, 0x0

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->levelValues:[I

    array-length v4, v4

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    move v5, v0

    invoke-static {v2, v3, v4, v5}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v2

    move v1, v2

    .line 155
    .local v1, "i":I
    invoke-static {}, Lsun/util/logging/PlatformLogger$Level;->values()[Lsun/util/logging/PlatformLogger$Level;

    move-result-object v2

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    :goto_0
    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "level":I
    :goto_1
    return-object v0

    .line 142
    .end local v1    # "i":I
    .restart local v0    # "level":I
    :sswitch_0
    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    move-object v0, v2

    goto :goto_1

    .line 143
    :sswitch_1
    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    move-object v0, v2

    goto :goto_1

    .line 144
    :sswitch_2
    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    move-object v0, v2

    goto :goto_1

    .line 145
    :sswitch_3
    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    move-object v0, v2

    goto :goto_1

    .line 146
    :sswitch_4
    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    move-object v0, v2

    goto :goto_1

    .line 147
    :sswitch_5
    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    move-object v0, v2

    goto :goto_1

    .line 148
    :sswitch_6
    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    move-object v0, v2

    goto :goto_1

    .line 149
    :sswitch_7
    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    move-object v0, v2

    goto :goto_1

    .line 150
    :sswitch_8
    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    move-object v0, v2

    goto :goto_1

    .line 155
    .restart local v1    # "i":I
    :cond_0
    move v3, v1

    neg-int v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_8
        0x12c -> :sswitch_0
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_1
        0x2bc -> :sswitch_5
        0x320 -> :sswitch_3
        0x384 -> :sswitch_4
        0x3e8 -> :sswitch_6
        0x7fffffff -> :sswitch_7
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/util/logging/PlatformLogger$Level;
    .locals 3

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lsun/util/logging/PlatformLogger$Level;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lsun/util/logging/PlatformLogger$Level;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lsun/util/logging/PlatformLogger$Level;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->$VALUES:[Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0}, [Lsun/util/logging/PlatformLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$Level;
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->levelValues:[I

    move-object v2, v0

    invoke-virtual {v2}, Lsun/util/logging/PlatformLogger$Level;->ordinal()I

    move-result v2

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lsun/util/logging/PlatformLogger$Level;
    return v0
.end method
