.class final enum Ljavafx/scene/SubScene$SubSceneDirtyBits;
.super Ljava/lang/Enum;
.source "SubScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/SubScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SubSceneDirtyBits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/SubScene$SubSceneDirtyBits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/SubScene$SubSceneDirtyBits;

.field public static final enum CAMERA_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

.field public static final enum CONTENT_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

.field public static final enum FILL_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

.field public static final enum LIGHTS_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

.field public static final enum ROOT_SG_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

.field public static final enum SIZE_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;


# instance fields
.field private mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 724
    new-instance v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SIZE_DIRTY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/SubScene$SubSceneDirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;->SIZE_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    .line 725
    new-instance v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FILL_DIRTY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/SubScene$SubSceneDirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;->FILL_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    .line 726
    new-instance v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ROOT_SG_DIRTY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/SubScene$SubSceneDirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;->ROOT_SG_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    .line 727
    new-instance v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CAMERA_DIRTY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/SubScene$SubSceneDirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;->CAMERA_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    .line 728
    new-instance v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LIGHTS_DIRTY"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/scene/SubScene$SubSceneDirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;->LIGHTS_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    .line 729
    new-instance v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CONTENT_DIRTY"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljavafx/scene/SubScene$SubSceneDirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;->CONTENT_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    .line 723
    const/4 v0, 0x6

    new-array v0, v0, [Ljavafx/scene/SubScene$SubSceneDirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/SubScene$SubSceneDirtyBits;->SIZE_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/SubScene$SubSceneDirtyBits;->FILL_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/SubScene$SubSceneDirtyBits;->ROOT_SG_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/SubScene$SubSceneDirtyBits;->CAMERA_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/scene/SubScene$SubSceneDirtyBits;->LIGHTS_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljavafx/scene/SubScene$SubSceneDirtyBits;->CONTENT_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;->$VALUES:[Ljavafx/scene/SubScene$SubSceneDirtyBits;

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
    .line 733
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$SubSceneDirtyBits;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/SubScene$SubSceneDirtyBits;->ordinal()I

    move-result v5

    shl-int/2addr v4, v5

    iput v4, v3, Ljavafx/scene/SubScene$SubSceneDirtyBits;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/SubScene$SubSceneDirtyBits;
    .locals 3

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/SubScene$SubSceneDirtyBits;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/SubScene$SubSceneDirtyBits;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/SubScene$SubSceneDirtyBits;
    .locals 1

    .prologue
    .line 723
    sget-object v0, Ljavafx/scene/SubScene$SubSceneDirtyBits;->$VALUES:[Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-virtual {v0}, [Ljavafx/scene/SubScene$SubSceneDirtyBits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/SubScene$SubSceneDirtyBits;

    return-object v0
.end method


# virtual methods
.method public final getMask()I
    .locals 2

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$SubSceneDirtyBits;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/SubScene$SubSceneDirtyBits;->mask:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene$SubSceneDirtyBits;
    return v0
.end method
