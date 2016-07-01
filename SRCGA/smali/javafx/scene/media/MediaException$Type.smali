.class public final enum Ljavafx/scene/media/MediaException$Type;
.super Ljava/lang/Enum;
.source "MediaException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/media/MediaException$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/media/MediaException$Type;

.field public static final enum MEDIA_CORRUPTED:Ljavafx/scene/media/MediaException$Type;

.field public static final enum MEDIA_INACCESSIBLE:Ljavafx/scene/media/MediaException$Type;

.field public static final enum MEDIA_UNAVAILABLE:Ljavafx/scene/media/MediaException$Type;

.field public static final enum MEDIA_UNSPECIFIED:Ljavafx/scene/media/MediaException$Type;

.field public static final enum MEDIA_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

.field public static final enum OPERATION_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

.field public static final enum PLAYBACK_ERROR:Ljavafx/scene/media/MediaException$Type;

.field public static final enum PLAYBACK_HALTED:Ljavafx/scene/media/MediaException$Type;

.field public static final enum UNKNOWN:Ljavafx/scene/media/MediaException$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    new-instance v0, Ljavafx/scene/media/MediaException$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MEDIA_CORRUPTED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaException$Type;->MEDIA_CORRUPTED:Ljavafx/scene/media/MediaException$Type;

    .line 55
    new-instance v0, Ljavafx/scene/media/MediaException$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MEDIA_INACCESSIBLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaException$Type;->MEDIA_INACCESSIBLE:Ljavafx/scene/media/MediaException$Type;

    .line 62
    new-instance v0, Ljavafx/scene/media/MediaException$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MEDIA_UNAVAILABLE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNAVAILABLE:Ljavafx/scene/media/MediaException$Type;

    .line 66
    new-instance v0, Ljavafx/scene/media/MediaException$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MEDIA_UNSPECIFIED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNSPECIFIED:Ljavafx/scene/media/MediaException$Type;

    .line 70
    new-instance v0, Ljavafx/scene/media/MediaException$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MEDIA_UNSUPPORTED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

    .line 75
    new-instance v0, Ljavafx/scene/media/MediaException$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OPERATION_UNSUPPORTED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaException$Type;->OPERATION_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

    .line 80
    new-instance v0, Ljavafx/scene/media/MediaException$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PLAYBACK_ERROR"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaException$Type;->PLAYBACK_ERROR:Ljavafx/scene/media/MediaException$Type;

    .line 84
    new-instance v0, Ljavafx/scene/media/MediaException$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PLAYBACK_HALTED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaException$Type;->PLAYBACK_HALTED:Ljavafx/scene/media/MediaException$Type;

    .line 88
    new-instance v0, Ljavafx/scene/media/MediaException$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UNKNOWN"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Ljavafx/scene/media/MediaException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/media/MediaException$Type;->UNKNOWN:Ljavafx/scene/media/MediaException$Type;

    .line 44
    const/16 v0, 0x9

    new-array v0, v0, [Ljavafx/scene/media/MediaException$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->MEDIA_CORRUPTED:Ljavafx/scene/media/MediaException$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->MEDIA_INACCESSIBLE:Ljavafx/scene/media/MediaException$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNAVAILABLE:Ljavafx/scene/media/MediaException$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNSPECIFIED:Ljavafx/scene/media/MediaException$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->OPERATION_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->PLAYBACK_ERROR:Ljavafx/scene/media/MediaException$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->PLAYBACK_HALTED:Ljavafx/scene/media/MediaException$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->UNKNOWN:Ljavafx/scene/media/MediaException$Type;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/media/MediaException$Type;->$VALUES:[Ljavafx/scene/media/MediaException$Type;

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
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaException$Type;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/media/MediaException$Type;
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/media/MediaException$Type;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/media/MediaException$Type;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/media/MediaException$Type;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Ljavafx/scene/media/MediaException$Type;->$VALUES:[Ljavafx/scene/media/MediaException$Type;

    invoke-virtual {v0}, [Ljavafx/scene/media/MediaException$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/media/MediaException$Type;

    return-object v0
.end method
