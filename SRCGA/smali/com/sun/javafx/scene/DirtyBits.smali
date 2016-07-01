.class public final enum Lcom/sun/javafx/scene/DirtyBits;
.super Ljava/lang/Enum;
.source "DirtyBits.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/scene/DirtyBits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum DEBUG:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum EFFECT_EFFECT:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum MATERIAL:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum MAX_DIRTY:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum MEDIAVIEW_MEDIA:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum MESH:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum MESH_GEOM:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_BLENDMODE:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_CACHE:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_CAMERA:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_CAMERA_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_CLIP:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_CSS:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_CULLFACE:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_DEPTH_TEST:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_DRAWMODE:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_EFFECT:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_FORCE_SYNC:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_LIGHT:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_LIGHT_SCOPE:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_LIGHT_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_OPACITY:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_SMOOTH:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_TRANSFORMED_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_VIEWPORT:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum NODE_VISIBLE:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum PARENT_CHILDREN:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum REGION_SHAPE:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum SHAPE_FILL:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum SHAPE_FILLRULE:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum SHAPE_MODE:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum SHAPE_STROKE:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum SHAPE_STROKEATTRS:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum TEXT_ATTRS:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum TEXT_FONT:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum TEXT_HELPER:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum TEXT_SELECTION:Lcom/sun/javafx/scene/DirtyBits;

.field public static final enum WEBVIEW_VIEW:Lcom/sun/javafx/scene/DirtyBits;


# instance fields
.field private mask:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_CACHE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_CACHE:Lcom/sun/javafx/scene/DirtyBits;

    .line 33
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_CLIP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_CLIP:Lcom/sun/javafx/scene/DirtyBits;

    .line 34
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_EFFECT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_EFFECT:Lcom/sun/javafx/scene/DirtyBits;

    .line 35
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_OPACITY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_OPACITY:Lcom/sun/javafx/scene/DirtyBits;

    .line 36
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_TRANSFORM"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    .line 37
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_BOUNDS"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    .line 38
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_TRANSFORMED_BOUNDS"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORMED_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    .line 39
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_VISIBLE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_VISIBLE:Lcom/sun/javafx/scene/DirtyBits;

    .line 40
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_DEPTH_TEST"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_DEPTH_TEST:Lcom/sun/javafx/scene/DirtyBits;

    .line 41
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_BLENDMODE"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_BLENDMODE:Lcom/sun/javafx/scene/DirtyBits;

    .line 42
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_CSS"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_CSS:Lcom/sun/javafx/scene/DirtyBits;

    .line 43
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_FORCE_SYNC"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_FORCE_SYNC:Lcom/sun/javafx/scene/DirtyBits;

    .line 46
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_GEOMETRY"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    .line 47
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_CULLFACE"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_CULLFACE:Lcom/sun/javafx/scene/DirtyBits;

    .line 48
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_DRAWMODE"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_DRAWMODE:Lcom/sun/javafx/scene/DirtyBits;

    .line 49
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_SMOOTH"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_SMOOTH:Lcom/sun/javafx/scene/DirtyBits;

    .line 50
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_VIEWPORT"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_VIEWPORT:Lcom/sun/javafx/scene/DirtyBits;

    .line 51
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_CONTENTS"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    .line 54
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PARENT_CHILDREN"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->PARENT_CHILDREN:Lcom/sun/javafx/scene/DirtyBits;

    .line 57
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SHAPE_FILL"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_FILL:Lcom/sun/javafx/scene/DirtyBits;

    .line 58
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SHAPE_FILLRULE"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_FILLRULE:Lcom/sun/javafx/scene/DirtyBits;

    .line 59
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SHAPE_MODE"

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_MODE:Lcom/sun/javafx/scene/DirtyBits;

    .line 60
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SHAPE_STROKE"

    const/16 v3, 0x16

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_STROKE:Lcom/sun/javafx/scene/DirtyBits;

    .line 61
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SHAPE_STROKEATTRS"

    const/16 v3, 0x17

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_STROKEATTRS:Lcom/sun/javafx/scene/DirtyBits;

    .line 64
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "REGION_SHAPE"

    const/16 v3, 0x18

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->REGION_SHAPE:Lcom/sun/javafx/scene/DirtyBits;

    .line 67
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TEXT_ATTRS"

    const/16 v3, 0x19

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->TEXT_ATTRS:Lcom/sun/javafx/scene/DirtyBits;

    .line 68
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TEXT_FONT"

    const/16 v3, 0x1a

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->TEXT_FONT:Lcom/sun/javafx/scene/DirtyBits;

    .line 69
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TEXT_SELECTION"

    const/16 v3, 0x1b

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->TEXT_SELECTION:Lcom/sun/javafx/scene/DirtyBits;

    .line 70
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TEXT_HELPER"

    const/16 v3, 0x1c

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->TEXT_HELPER:Lcom/sun/javafx/scene/DirtyBits;

    .line 73
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MEDIAVIEW_MEDIA"

    const/16 v3, 0x1d

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->MEDIAVIEW_MEDIA:Lcom/sun/javafx/scene/DirtyBits;

    .line 76
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "WEBVIEW_VIEW"

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->WEBVIEW_VIEW:Lcom/sun/javafx/scene/DirtyBits;

    .line 79
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EFFECT_EFFECT"

    const/16 v3, 0x1f

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->EFFECT_EFFECT:Lcom/sun/javafx/scene/DirtyBits;

    .line 82
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_CAMERA"

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA:Lcom/sun/javafx/scene/DirtyBits;

    .line 83
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_CAMERA_TRANSFORM"

    const/16 v3, 0x21

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    .line 86
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_LIGHT"

    const/16 v3, 0x22

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT:Lcom/sun/javafx/scene/DirtyBits;

    .line 87
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_LIGHT_SCOPE"

    const/16 v3, 0x23

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT_SCOPE:Lcom/sun/javafx/scene/DirtyBits;

    .line 88
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NODE_LIGHT_TRANSFORM"

    const/16 v3, 0x24

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    .line 91
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MATERIAL"

    const/16 v3, 0x25

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->MATERIAL:Lcom/sun/javafx/scene/DirtyBits;

    .line 94
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MESH"

    const/16 v3, 0x26

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->MESH:Lcom/sun/javafx/scene/DirtyBits;

    .line 95
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MESH_GEOM"

    const/16 v3, 0x27

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->MESH_GEOM:Lcom/sun/javafx/scene/DirtyBits;

    .line 98
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DEBUG"

    const/16 v3, 0x28

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->DEBUG:Lcom/sun/javafx/scene/DirtyBits;

    .line 103
    new-instance v0, Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MAX_DIRTY"

    const/16 v3, 0x29

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/DirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->MAX_DIRTY:Lcom/sun/javafx/scene/DirtyBits;

    .line 29
    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/sun/javafx/scene/DirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CACHE:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CLIP:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_EFFECT:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_OPACITY:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORMED_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_VISIBLE:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_DEPTH_TEST:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_BLENDMODE:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CSS:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_FORCE_SYNC:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CULLFACE:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_DRAWMODE:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_SMOOTH:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_VIEWPORT:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->PARENT_CHILDREN:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_FILL:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_FILLRULE:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_MODE:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x16

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_STROKE:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x17

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_STROKEATTRS:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x18

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->REGION_SHAPE:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x19

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->TEXT_ATTRS:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1a

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->TEXT_FONT:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1b

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->TEXT_SELECTION:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1c

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->TEXT_HELPER:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1d

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->MEDIAVIEW_MEDIA:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1e

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->WEBVIEW_VIEW:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1f

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->EFFECT_EFFECT:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x20

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x21

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x22

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x23

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT_SCOPE:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x24

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x25

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->MATERIAL:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x26

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->MESH:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x27

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->MESH_GEOM:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x28

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->DEBUG:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x29

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->MAX_DIRTY:Lcom/sun/javafx/scene/DirtyBits;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/scene/DirtyBits;->$VALUES:[Lcom/sun/javafx/scene/DirtyBits;

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
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/DirtyBits;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/DirtyBits;->ordinal()I

    move-result v5

    shl-int/2addr v4, v5

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/DirtyBits;->mask:J

    .line 109
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/scene/DirtyBits;
    .locals 3

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/scene/DirtyBits;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/DirtyBits;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/scene/DirtyBits;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sun/javafx/scene/DirtyBits;->$VALUES:[Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v0}, [Lcom/sun/javafx/scene/DirtyBits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/scene/DirtyBits;

    return-object v0
.end method


# virtual methods
.method public final getMask()J
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/DirtyBits;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/DirtyBits;->mask:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/DirtyBits;
    return-wide v0
.end method
