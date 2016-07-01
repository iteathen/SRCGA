.class public final enum Lcom/sun/media/jfxmedia/track/Track$Encoding;
.super Ljava/lang/Enum;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/track/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/media/jfxmedia/track/Track$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/media/jfxmedia/track/Track$Encoding;

.field public static final enum AAC:Lcom/sun/media/jfxmedia/track/Track$Encoding;

.field public static final enum CUSTOM:Lcom/sun/media/jfxmedia/track/Track$Encoding;

.field public static final enum H264:Lcom/sun/media/jfxmedia/track/Track$Encoding;

.field public static final enum MPEG1AUDIO:Lcom/sun/media/jfxmedia/track/Track$Encoding;

.field public static final enum MPEG1LAYER3:Lcom/sun/media/jfxmedia/track/Track$Encoding;

.field public static final enum NONE:Lcom/sun/media/jfxmedia/track/Track$Encoding;

.field public static final enum PCM:Lcom/sun/media/jfxmedia/track/Track$Encoding;

.field public static final enum VP6:Lcom/sun/media/jfxmedia/track/Track$Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    new-instance v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/track/Track$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;->NONE:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    .line 41
    new-instance v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PCM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/track/Track$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;->PCM:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    .line 42
    new-instance v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MPEG1AUDIO"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/track/Track$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;->MPEG1AUDIO:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    .line 43
    new-instance v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MPEG1LAYER3"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/track/Track$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;->MPEG1LAYER3:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    .line 44
    new-instance v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "AAC"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/track/Track$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;->AAC:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    .line 47
    new-instance v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "H264"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/track/Track$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;->H264:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    .line 50
    new-instance v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "VP6"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/track/Track$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;->VP6:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    .line 53
    new-instance v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CUSTOM"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmedia/track/Track$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;->CUSTOM:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/media/jfxmedia/track/Track$Encoding;->NONE:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/media/jfxmedia/track/Track$Encoding;->PCM:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/media/jfxmedia/track/Track$Encoding;->MPEG1AUDIO:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/media/jfxmedia/track/Track$Encoding;->MPEG1LAYER3:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/media/jfxmedia/track/Track$Encoding;->AAC:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/media/jfxmedia/track/Track$Encoding;->H264:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/media/jfxmedia/track/Track$Encoding;->VP6:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/media/jfxmedia/track/Track$Encoding;->CUSTOM:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;->$VALUES:[Lcom/sun/media/jfxmedia/track/Track$Encoding;

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
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/Track$Encoding;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toEncoding(I)Lcom/sun/media/jfxmedia/track/Track$Encoding;
    .locals 7

    .prologue
    .line 56
    move v0, p0

    .local v0, "ordinal":I
    invoke-static {}, Lcom/sun/media/jfxmedia/track/Track$Encoding;->values()[Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 57
    .local v4, "value":Lcom/sun/media/jfxmedia/track/Track$Encoding;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/media/jfxmedia/track/Track$Encoding;->ordinal()I

    move-result v5

    move v6, v0

    if-ne v5, v6, :cond_0

    .line 58
    move-object v5, v4

    move-object v0, v5

    .line 61
    .end local v0    # "ordinal":I
    .end local v4    # "value":Lcom/sun/media/jfxmedia/track/Track$Encoding;
    :goto_1
    return-object v0

    .line 56
    .restart local v0    # "ordinal":I
    .restart local v4    # "value":Lcom/sun/media/jfxmedia/track/Track$Encoding;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v4    # "value":Lcom/sun/media/jfxmedia/track/Track$Encoding;
    :cond_1
    sget-object v5, Lcom/sun/media/jfxmedia/track/Track$Encoding;->NONE:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v0, v5

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/media/jfxmedia/track/Track$Encoding;
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/media/jfxmedia/track/Track$Encoding;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sun/media/jfxmedia/track/Track$Encoding;->$VALUES:[Lcom/sun/media/jfxmedia/track/Track$Encoding;

    invoke-virtual {v0}, [Lcom/sun/media/jfxmedia/track/Track$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/media/jfxmedia/track/Track$Encoding;

    return-object v0
.end method
