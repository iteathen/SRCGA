.class public final enum Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
.super Ljava/lang/Enum;
.source "PlayerStateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

.field public static final enum FINISHED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

.field public static final enum HALTED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

.field public static final enum PAUSED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

.field public static final enum PLAYING:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

.field public static final enum READY:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

.field public static final enum STALLED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

.field public static final enum STOPPED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

.field public static final enum UNKNOWN:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    new-instance v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->UNKNOWN:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    new-instance v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->READY:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    new-instance v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PLAYING"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->PLAYING:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    new-instance v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PAUSED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->PAUSED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    new-instance v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STOPPED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->STOPPED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    new-instance v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STALLED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->STALLED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    new-instance v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FINISHED"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->FINISHED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    new-instance v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "HALTED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->HALTED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->UNKNOWN:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->READY:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->PLAYING:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->PAUSED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->STOPPED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->STALLED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->FINISHED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->HALTED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->$VALUES:[Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

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
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->$VALUES:[Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    invoke-virtual {v0}, [Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    return-object v0
.end method
