.class public final enum Ljavafx/application/ConditionalFeature;
.super Ljava/lang/Enum;
.source "ConditionalFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/application/ConditionalFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/application/ConditionalFeature;

.field public static final enum CONTROLS:Ljavafx/application/ConditionalFeature;

.field public static final enum EFFECT:Ljavafx/application/ConditionalFeature;

.field public static final enum FXML:Ljavafx/application/ConditionalFeature;

.field public static final enum GRAPHICS:Ljavafx/application/ConditionalFeature;

.field public static final enum INPUT_METHOD:Ljavafx/application/ConditionalFeature;

.field public static final enum INPUT_MULTITOUCH:Ljavafx/application/ConditionalFeature;

.field public static final enum INPUT_POINTER:Ljavafx/application/ConditionalFeature;

.field public static final enum INPUT_TOUCH:Ljavafx/application/ConditionalFeature;

.field public static final enum MEDIA:Ljavafx/application/ConditionalFeature;

.field public static final enum SCENE3D:Ljavafx/application/ConditionalFeature;

.field public static final enum SHAPE_CLIP:Ljavafx/application/ConditionalFeature;

.field public static final enum SWING:Ljavafx/application/ConditionalFeature;

.field public static final enum SWT:Ljavafx/application/ConditionalFeature;

.field public static final enum TRANSPARENT_WINDOW:Ljavafx/application/ConditionalFeature;

.field public static final enum TWO_LEVEL_FOCUS:Ljavafx/application/ConditionalFeature;

.field public static final enum UNIFIED_WINDOW:Ljavafx/application/ConditionalFeature;

.field public static final enum VIRTUAL_KEYBOARD:Ljavafx/application/ConditionalFeature;

.field public static final enum WEB:Ljavafx/application/ConditionalFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 46
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "GRAPHICS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->GRAPHICS:Ljavafx/application/ConditionalFeature;

    .line 53
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CONTROLS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->CONTROLS:Ljavafx/application/ConditionalFeature;

    .line 60
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MEDIA"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->MEDIA:Ljavafx/application/ConditionalFeature;

    .line 67
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "WEB"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->WEB:Ljavafx/application/ConditionalFeature;

    .line 75
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SWT"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->SWT:Ljavafx/application/ConditionalFeature;

    .line 83
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SWING"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->SWING:Ljavafx/application/ConditionalFeature;

    .line 94
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FXML"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->FXML:Ljavafx/application/ConditionalFeature;

    .line 102
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SCENE3D"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    .line 109
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EFFECT"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->EFFECT:Ljavafx/application/ConditionalFeature;

    .line 118
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SHAPE_CLIP"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->SHAPE_CLIP:Ljavafx/application/ConditionalFeature;

    .line 125
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INPUT_METHOD"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->INPUT_METHOD:Ljavafx/application/ConditionalFeature;

    .line 147
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TRANSPARENT_WINDOW"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->TRANSPARENT_WINDOW:Ljavafx/application/ConditionalFeature;

    .line 159
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UNIFIED_WINDOW"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->UNIFIED_WINDOW:Ljavafx/application/ConditionalFeature;

    .line 178
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TWO_LEVEL_FOCUS"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->TWO_LEVEL_FOCUS:Ljavafx/application/ConditionalFeature;

    .line 189
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "VIRTUAL_KEYBOARD"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->VIRTUAL_KEYBOARD:Ljavafx/application/ConditionalFeature;

    .line 201
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INPUT_TOUCH"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->INPUT_TOUCH:Ljavafx/application/ConditionalFeature;

    .line 215
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INPUT_MULTITOUCH"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->INPUT_MULTITOUCH:Ljavafx/application/ConditionalFeature;

    .line 227
    new-instance v0, Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INPUT_POINTER"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Ljavafx/application/ConditionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/application/ConditionalFeature;->INPUT_POINTER:Ljavafx/application/ConditionalFeature;

    .line 39
    const/16 v0, 0x12

    new-array v0, v0, [Ljavafx/application/ConditionalFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/application/ConditionalFeature;->GRAPHICS:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/application/ConditionalFeature;->CONTROLS:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/application/ConditionalFeature;->MEDIA:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/application/ConditionalFeature;->WEB:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/application/ConditionalFeature;->SWT:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljavafx/application/ConditionalFeature;->SWING:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Ljavafx/application/ConditionalFeature;->FXML:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Ljavafx/application/ConditionalFeature;->EFFECT:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget-object v3, Ljavafx/application/ConditionalFeature;->SHAPE_CLIP:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    sget-object v3, Ljavafx/application/ConditionalFeature;->INPUT_METHOD:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    sget-object v3, Ljavafx/application/ConditionalFeature;->TRANSPARENT_WINDOW:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    sget-object v3, Ljavafx/application/ConditionalFeature;->UNIFIED_WINDOW:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    sget-object v3, Ljavafx/application/ConditionalFeature;->TWO_LEVEL_FOCUS:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    sget-object v3, Ljavafx/application/ConditionalFeature;->VIRTUAL_KEYBOARD:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    sget-object v3, Ljavafx/application/ConditionalFeature;->INPUT_TOUCH:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    sget-object v3, Ljavafx/application/ConditionalFeature;->INPUT_MULTITOUCH:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    sget-object v3, Ljavafx/application/ConditionalFeature;->INPUT_POINTER:Ljavafx/application/ConditionalFeature;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/application/ConditionalFeature;->$VALUES:[Ljavafx/application/ConditionalFeature;

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
    .line 39
    move-object v0, p0

    .local v0, "this":Ljavafx/application/ConditionalFeature;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/application/ConditionalFeature;
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/application/ConditionalFeature;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/application/ConditionalFeature;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/application/ConditionalFeature;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Ljavafx/application/ConditionalFeature;->$VALUES:[Ljavafx/application/ConditionalFeature;

    invoke-virtual {v0}, [Ljavafx/application/ConditionalFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/application/ConditionalFeature;

    return-object v0
.end method
