.class public final enum Ljavafx/scene/media/MediaPlayer$Status;
.super Ljava/lang/Enum;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/media/MediaPlayer$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/media/MediaPlayer$Status;

.field public static final enum DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

.field public static final enum HALTED:Ljavafx/scene/media/MediaPlayer$Status;

.field public static final enum PAUSED:Ljavafx/scene/media/MediaPlayer$Status;

.field public static final enum PLAYING:Ljavafx/scene/media/MediaPlayer$Status;

.field public static final enum READY:Ljavafx/scene/media/MediaPlayer$Status;

.field public static final enum STALLED:Ljavafx/scene/media/MediaPlayer$Status;

.field public static final enum STOPPED:Ljavafx/scene/media/MediaPlayer$Status;

.field public static final enum UNKNOWN:Ljavafx/scene/media/MediaPlayer$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 217
    new-instance v0, Ljavafx/scene/media/MediaPlayer$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaPlayer$Status;->UNKNOWN:Ljavafx/scene/media/MediaPlayer$Status;

    .line 222
    new-instance v0, Ljavafx/scene/media/MediaPlayer$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaPlayer$Status;->READY:Ljavafx/scene/media/MediaPlayer$Status;

    .line 227
    new-instance v0, Ljavafx/scene/media/MediaPlayer$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PAUSED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaPlayer$Status;->PAUSED:Ljavafx/scene/media/MediaPlayer$Status;

    .line 231
    new-instance v0, Ljavafx/scene/media/MediaPlayer$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PLAYING"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaPlayer$Status;->PLAYING:Ljavafx/scene/media/MediaPlayer$Status;

    .line 236
    new-instance v0, Ljavafx/scene/media/MediaPlayer$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STOPPED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaPlayer$Status;->STOPPED:Ljavafx/scene/media/MediaPlayer$Status;

    .line 245
    new-instance v0, Ljavafx/scene/media/MediaPlayer$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STALLED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaPlayer$Status;->STALLED:Ljavafx/scene/media/MediaPlayer$Status;

    .line 251
    new-instance v0, Ljavafx/scene/media/MediaPlayer$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "HALTED"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaPlayer$Status;->HALTED:Ljavafx/scene/media/MediaPlayer$Status;

    .line 258
    new-instance v0, Ljavafx/scene/media/MediaPlayer$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DISPOSED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    .line 209
    const/16 v0, 0x8

    new-array v0, v0, [Ljavafx/scene/media/MediaPlayer$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/media/MediaPlayer$Status;->UNKNOWN:Ljavafx/scene/media/MediaPlayer$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/media/MediaPlayer$Status;->READY:Ljavafx/scene/media/MediaPlayer$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/media/MediaPlayer$Status;->PAUSED:Ljavafx/scene/media/MediaPlayer$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/media/MediaPlayer$Status;->PLAYING:Ljavafx/scene/media/MediaPlayer$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/scene/media/MediaPlayer$Status;->STOPPED:Ljavafx/scene/media/MediaPlayer$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljavafx/scene/media/MediaPlayer$Status;->STALLED:Ljavafx/scene/media/MediaPlayer$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Ljavafx/scene/media/MediaPlayer$Status;->HALTED:Ljavafx/scene/media/MediaPlayer$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/media/MediaPlayer$Status;->$VALUES:[Ljavafx/scene/media/MediaPlayer$Status;

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
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$Status;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/media/MediaPlayer$Status;
    .locals 3

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/media/MediaPlayer$Status;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/media/MediaPlayer$Status;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/media/MediaPlayer$Status;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Ljavafx/scene/media/MediaPlayer$Status;->$VALUES:[Ljavafx/scene/media/MediaPlayer$Status;

    invoke-virtual {v0}, [Ljavafx/scene/media/MediaPlayer$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/media/MediaPlayer$Status;

    return-object v0
.end method
