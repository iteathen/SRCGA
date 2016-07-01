.class public final enum Ljavafx/stage/Modality;
.super Ljava/lang/Enum;
.source "Modality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/stage/Modality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/stage/Modality;

.field public static final enum APPLICATION_MODAL:Ljavafx/stage/Modality;

.field public static final enum NONE:Ljavafx/stage/Modality;

.field public static final enum WINDOW_MODAL:Ljavafx/stage/Modality;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    new-instance v0, Ljavafx/stage/Modality;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/stage/Modality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/stage/Modality;->NONE:Ljavafx/stage/Modality;

    .line 47
    new-instance v0, Ljavafx/stage/Modality;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "WINDOW_MODAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/stage/Modality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/stage/Modality;->WINDOW_MODAL:Ljavafx/stage/Modality;

    .line 53
    new-instance v0, Ljavafx/stage/Modality;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "APPLICATION_MODAL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/stage/Modality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/stage/Modality;->APPLICATION_MODAL:Ljavafx/stage/Modality;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/stage/Modality;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/stage/Modality;->NONE:Ljavafx/stage/Modality;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/stage/Modality;->WINDOW_MODAL:Ljavafx/stage/Modality;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/stage/Modality;->APPLICATION_MODAL:Ljavafx/stage/Modality;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/stage/Modality;->$VALUES:[Ljavafx/stage/Modality;

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
    .line 32
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Modality;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/stage/Modality;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/stage/Modality;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/stage/Modality;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/stage/Modality;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ljavafx/stage/Modality;->$VALUES:[Ljavafx/stage/Modality;

    invoke-virtual {v0}, [Ljavafx/stage/Modality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/stage/Modality;

    return-object v0
.end method
