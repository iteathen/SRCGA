.class public final enum Ljavafx/scene/AccessibleAction;
.super Ljava/lang/Enum;
.source "AccessibleAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/AccessibleAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/AccessibleAction;

.field public static final enum BLOCK_DECREMENT:Ljavafx/scene/AccessibleAction;

.field public static final enum BLOCK_INCREMENT:Ljavafx/scene/AccessibleAction;

.field public static final enum COLLAPSE:Ljavafx/scene/AccessibleAction;

.field public static final enum DECREMENT:Ljavafx/scene/AccessibleAction;

.field public static final enum EXPAND:Ljavafx/scene/AccessibleAction;

.field public static final enum FIRE:Ljavafx/scene/AccessibleAction;

.field public static final enum INCREMENT:Ljavafx/scene/AccessibleAction;

.field public static final enum REQUEST_FOCUS:Ljavafx/scene/AccessibleAction;

.field public static final enum SET_SELECTED_ITEMS:Ljavafx/scene/AccessibleAction;

.field public static final enum SET_TEXT:Ljavafx/scene/AccessibleAction;

.field public static final enum SET_TEXT_SELECTION:Ljavafx/scene/AccessibleAction;

.field public static final enum SET_VALUE:Ljavafx/scene/AccessibleAction;

.field public static final enum SHOW_ITEM:Ljavafx/scene/AccessibleAction;

.field public static final enum SHOW_MENU:Ljavafx/scene/AccessibleAction;

.field public static final enum SHOW_TEXT_RANGE:Ljavafx/scene/AccessibleAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 57
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BLOCK_DECREMENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->BLOCK_DECREMENT:Ljavafx/scene/AccessibleAction;

    .line 68
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BLOCK_INCREMENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->BLOCK_INCREMENT:Ljavafx/scene/AccessibleAction;

    .line 78
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "COLLAPSE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->COLLAPSE:Ljavafx/scene/AccessibleAction;

    .line 89
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DECREMENT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->DECREMENT:Ljavafx/scene/AccessibleAction;

    .line 99
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EXPAND"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->EXPAND:Ljavafx/scene/AccessibleAction;

    .line 112
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FIRE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->FIRE:Ljavafx/scene/AccessibleAction;

    .line 123
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INCREMENT"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->INCREMENT:Ljavafx/scene/AccessibleAction;

    .line 141
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "REQUEST_FOCUS"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->REQUEST_FOCUS:Ljavafx/scene/AccessibleAction;

    .line 152
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SHOW_ITEM"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->SHOW_ITEM:Ljavafx/scene/AccessibleAction;

    .line 164
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SHOW_TEXT_RANGE"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->SHOW_TEXT_RANGE:Ljavafx/scene/AccessibleAction;

    .line 175
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SET_SELECTED_ITEMS"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->SET_SELECTED_ITEMS:Ljavafx/scene/AccessibleAction;

    .line 187
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SET_TEXT_SELECTION"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->SET_TEXT_SELECTION:Ljavafx/scene/AccessibleAction;

    .line 198
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SET_TEXT"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->SET_TEXT:Ljavafx/scene/AccessibleAction;

    .line 209
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SET_VALUE"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->SET_VALUE:Ljavafx/scene/AccessibleAction;

    .line 222
    new-instance v0, Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SHOW_MENU"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Ljavafx/scene/AccessibleAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/AccessibleAction;->SHOW_MENU:Ljavafx/scene/AccessibleAction;

    .line 46
    const/16 v0, 0xf

    new-array v0, v0, [Ljavafx/scene/AccessibleAction;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/AccessibleAction;->BLOCK_DECREMENT:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/AccessibleAction;->BLOCK_INCREMENT:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/AccessibleAction;->COLLAPSE:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/AccessibleAction;->DECREMENT:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/scene/AccessibleAction;->EXPAND:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljavafx/scene/AccessibleAction;->FIRE:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Ljavafx/scene/AccessibleAction;->INCREMENT:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Ljavafx/scene/AccessibleAction;->REQUEST_FOCUS:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Ljavafx/scene/AccessibleAction;->SHOW_ITEM:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget-object v3, Ljavafx/scene/AccessibleAction;->SHOW_TEXT_RANGE:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    sget-object v3, Ljavafx/scene/AccessibleAction;->SET_SELECTED_ITEMS:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    sget-object v3, Ljavafx/scene/AccessibleAction;->SET_TEXT_SELECTION:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    sget-object v3, Ljavafx/scene/AccessibleAction;->SET_TEXT:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    sget-object v3, Ljavafx/scene/AccessibleAction;->SET_VALUE:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    sget-object v3, Ljavafx/scene/AccessibleAction;->SHOW_MENU:Ljavafx/scene/AccessibleAction;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/AccessibleAction;->$VALUES:[Ljavafx/scene/AccessibleAction;

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
    .line 46
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/AccessibleAction;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/AccessibleAction;
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/AccessibleAction;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/AccessibleAction;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/AccessibleAction;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Ljavafx/scene/AccessibleAction;->$VALUES:[Ljavafx/scene/AccessibleAction;

    invoke-virtual {v0}, [Ljavafx/scene/AccessibleAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/AccessibleAction;

    return-object v0
.end method
