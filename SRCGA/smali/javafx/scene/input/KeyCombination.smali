.class public abstract Ljavafx/scene/input/KeyCombination;
.super Ljava/lang/Object;
.source "KeyCombination.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/input/KeyCombination$ModifierValue;,
        Ljavafx/scene/input/KeyCombination$Modifier;
    }
.end annotation


# static fields
.field public static final ALT_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

.field public static final ALT_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

.field public static final CONTROL_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

.field public static final CONTROL_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

.field public static final META_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

.field public static final META_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

.field public static final NO_MATCH:Ljavafx/scene/input/KeyCombination;

.field private static final POSSIBLE_MODIFIERS:[Ljavafx/scene/input/KeyCombination$Modifier;

.field public static final SHIFT_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

.field public static final SHIFT_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

.field public static final SHORTCUT_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

.field public static final SHORTCUT_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;


# instance fields
.field private final alt:Ljavafx/scene/input/KeyCombination$ModifierValue;

.field private final control:Ljavafx/scene/input/KeyCombination$ModifierValue;

.field private final meta:Ljavafx/scene/input/KeyCombination$ModifierValue;

.field private final shift:Ljavafx/scene/input/KeyCombination$ModifierValue;

.field private final shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 53
    new-instance v0, Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Ljavafx/scene/input/KeyCode;->SHIFT:Ljavafx/scene/input/KeyCode;

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/input/KeyCombination$Modifier;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$1;)V

    sput-object v0, Ljavafx/scene/input/KeyCombination;->SHIFT_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

    .line 59
    new-instance v0, Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Ljavafx/scene/input/KeyCode;->SHIFT:Ljavafx/scene/input/KeyCode;

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/input/KeyCombination$Modifier;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$1;)V

    sput-object v0, Ljavafx/scene/input/KeyCombination;->SHIFT_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

    .line 62
    new-instance v0, Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Ljavafx/scene/input/KeyCode;->CONTROL:Ljavafx/scene/input/KeyCode;

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/input/KeyCombination$Modifier;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$1;)V

    sput-object v0, Ljavafx/scene/input/KeyCombination;->CONTROL_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

    .line 68
    new-instance v0, Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Ljavafx/scene/input/KeyCode;->CONTROL:Ljavafx/scene/input/KeyCode;

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/input/KeyCombination$Modifier;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$1;)V

    sput-object v0, Ljavafx/scene/input/KeyCombination;->CONTROL_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

    .line 71
    new-instance v0, Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Ljavafx/scene/input/KeyCode;->ALT:Ljavafx/scene/input/KeyCode;

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/input/KeyCombination$Modifier;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$1;)V

    sput-object v0, Ljavafx/scene/input/KeyCombination;->ALT_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

    .line 77
    new-instance v0, Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Ljavafx/scene/input/KeyCode;->ALT:Ljavafx/scene/input/KeyCode;

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/input/KeyCombination$Modifier;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$1;)V

    sput-object v0, Ljavafx/scene/input/KeyCombination;->ALT_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

    .line 80
    new-instance v0, Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Ljavafx/scene/input/KeyCode;->META:Ljavafx/scene/input/KeyCode;

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/input/KeyCombination$Modifier;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$1;)V

    sput-object v0, Ljavafx/scene/input/KeyCombination;->META_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

    .line 86
    new-instance v0, Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Ljavafx/scene/input/KeyCode;->META:Ljavafx/scene/input/KeyCode;

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/input/KeyCombination$Modifier;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$1;)V

    sput-object v0, Ljavafx/scene/input/KeyCombination;->META_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

    .line 89
    new-instance v0, Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Ljavafx/scene/input/KeyCode;->SHORTCUT:Ljavafx/scene/input/KeyCode;

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/input/KeyCombination$Modifier;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$1;)V

    sput-object v0, Ljavafx/scene/input/KeyCombination;->SHORTCUT_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

    .line 95
    new-instance v0, Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Ljavafx/scene/input/KeyCode;->SHORTCUT:Ljavafx/scene/input/KeyCode;

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljavafx/scene/input/KeyCombination$Modifier;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$1;)V

    sput-object v0, Ljavafx/scene/input/KeyCombination;->SHORTCUT_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

    .line 98
    const/16 v0, 0xa

    new-array v0, v0, [Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/input/KeyCombination;->SHIFT_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/input/KeyCombination;->SHIFT_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/input/KeyCombination;->CONTROL_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/input/KeyCombination;->CONTROL_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    sget-object v3, Ljavafx/scene/input/KeyCombination;->ALT_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x5

    sget-object v3, Ljavafx/scene/input/KeyCombination;->ALT_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x6

    sget-object v3, Ljavafx/scene/input/KeyCombination;->META_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x7

    sget-object v3, Ljavafx/scene/input/KeyCombination;->META_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x8

    sget-object v3, Ljavafx/scene/input/KeyCombination;->SHORTCUT_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x9

    sget-object v3, Ljavafx/scene/input/KeyCombination;->SHORTCUT_ANY:Ljavafx/scene/input/KeyCombination$Modifier;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/input/KeyCombination;->POSSIBLE_MODIFIERS:[Ljavafx/scene/input/KeyCombination$Modifier;

    .line 109
    new-instance v0, Ljavafx/scene/input/KeyCombination$1;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    new-array v2, v2, [Ljavafx/scene/input/KeyCombination$Modifier;

    invoke-direct {v1, v2}, Ljavafx/scene/input/KeyCombination$1;-><init>([Ljavafx/scene/input/KeyCombination$Modifier;)V

    sput-object v0, Ljavafx/scene/input/KeyCombination;->NO_MATCH:Ljavafx/scene/input/KeyCombination;

    return-void
.end method

.method protected constructor <init>(Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;)V
    .locals 10

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    move-object v1, p1

    .local v1, "shift":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v2, p2

    .local v2, "control":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v3, p3

    .local v3, "alt":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v4, p4

    .local v4, "meta":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v5, p5

    .local v5, "shortcut":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 184
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v5

    if-nez v6, :cond_1

    .line 189
    :cond_0
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Modifier value must not be null!"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 192
    :cond_1
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/input/KeyCombination;->shift:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 193
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljavafx/scene/input/KeyCombination;->control:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 194
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/scene/input/KeyCombination;->alt:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 195
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljavafx/scene/input/KeyCombination;->meta:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 196
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljavafx/scene/input/KeyCombination;->shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 197
    return-void
.end method

.method protected varargs constructor <init>([Ljavafx/scene/input/KeyCombination$Modifier;)V
    .locals 9

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    move-object v1, p1

    .local v1, "modifiers":[Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/KeyCode;->SHIFT:Ljavafx/scene/input/KeyCode;

    invoke-static {v3, v4}, Ljavafx/scene/input/KeyCombination;->getModifierValue([Ljavafx/scene/input/KeyCombination$Modifier;Ljavafx/scene/input/KeyCode;)Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v3

    move-object v4, v1

    sget-object v5, Ljavafx/scene/input/KeyCode;->CONTROL:Ljavafx/scene/input/KeyCode;

    .line 211
    invoke-static {v4, v5}, Ljavafx/scene/input/KeyCombination;->getModifierValue([Ljavafx/scene/input/KeyCombination$Modifier;Ljavafx/scene/input/KeyCode;)Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v4

    move-object v5, v1

    sget-object v6, Ljavafx/scene/input/KeyCode;->ALT:Ljavafx/scene/input/KeyCode;

    .line 212
    invoke-static {v5, v6}, Ljavafx/scene/input/KeyCombination;->getModifierValue([Ljavafx/scene/input/KeyCombination$Modifier;Ljavafx/scene/input/KeyCode;)Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v5

    move-object v6, v1

    sget-object v7, Ljavafx/scene/input/KeyCode;->META:Ljavafx/scene/input/KeyCode;

    .line 213
    invoke-static {v6, v7}, Ljavafx/scene/input/KeyCombination;->getModifierValue([Ljavafx/scene/input/KeyCombination$Modifier;Ljavafx/scene/input/KeyCode;)Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Ljavafx/scene/input/KeyCode;->SHORTCUT:Ljavafx/scene/input/KeyCode;

    .line 214
    invoke-static {v7, v8}, Ljavafx/scene/input/KeyCombination;->getModifierValue([Ljavafx/scene/input/KeyCombination$Modifier;Ljavafx/scene/input/KeyCode;)Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v7

    .line 210
    invoke-direct/range {v2 .. v7}, Ljavafx/scene/input/KeyCombination;-><init>(Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;)V

    .line 215
    return-void
.end method

.method private static addModifierIntoString(Ljava/lang/StringBuilder;Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;)V
    .locals 5

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "modifierKey":Ljavafx/scene/input/KeyCode;
    move-object v2, p2

    .local v2, "modifierValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v3, v2

    sget-object v4, Ljavafx/scene/input/KeyCombination$ModifierValue;->UP:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v3, v4, :cond_0

    .line 527
    .line 539
    :goto_0
    return-void

    .line 530
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 531
    move-object v3, v0

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 534
    :cond_1
    move-object v3, v2

    sget-object v4, Ljavafx/scene/input/KeyCombination$ModifierValue;->ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v3, v4, :cond_2

    .line 535
    move-object v3, v0

    const-string v4, "Ignore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 538
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/KeyCode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 539
    goto :goto_0
.end method

.method private addModifiersIntoString(Ljava/lang/StringBuilder;)V
    .locals 5

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    move-object v1, p1

    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/KeyCode;->SHIFT:Ljavafx/scene/input/KeyCode;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->shift:Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-static {v2, v3, v4}, Ljavafx/scene/input/KeyCombination;->addModifierIntoString(Ljava/lang/StringBuilder;Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;)V

    .line 515
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/KeyCode;->CONTROL:Ljavafx/scene/input/KeyCode;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->control:Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-static {v2, v3, v4}, Ljavafx/scene/input/KeyCombination;->addModifierIntoString(Ljava/lang/StringBuilder;Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;)V

    .line 516
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/KeyCode;->ALT:Ljavafx/scene/input/KeyCode;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->alt:Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-static {v2, v3, v4}, Ljavafx/scene/input/KeyCombination;->addModifierIntoString(Ljava/lang/StringBuilder;Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;)V

    .line 517
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/KeyCode;->META:Ljavafx/scene/input/KeyCode;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->meta:Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-static {v2, v3, v4}, Ljavafx/scene/input/KeyCombination;->addModifierIntoString(Ljava/lang/StringBuilder;Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;)V

    .line 518
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/KeyCode;->SHORTCUT:Ljavafx/scene/input/KeyCode;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-static {v2, v3, v4}, Ljavafx/scene/input/KeyCombination;->addModifierIntoString(Ljava/lang/StringBuilder;Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;)V

    .line 519
    return-void
.end method

.method static getModifier(Ljava/lang/String;)Ljavafx/scene/input/KeyCombination$Modifier;
    .locals 7

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v5, Ljavafx/scene/input/KeyCombination;->POSSIBLE_MODIFIERS:[Ljavafx/scene/input/KeyCombination$Modifier;

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

    .line 589
    .local v4, "modifier":Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/input/KeyCombination$Modifier;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 590
    move-object v5, v4

    move-object v0, v5

    .line 594
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 588
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 594
    .end local v4    # "modifier":Ljavafx/scene/input/KeyCombination$Modifier;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method private static getModifierValue([Ljavafx/scene/input/KeyCombination$Modifier;Ljavafx/scene/input/KeyCode;)Ljavafx/scene/input/KeyCombination$ModifierValue;
    .locals 12

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "modifiers":[Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v1, p1

    .local v1, "modifierKey":Ljavafx/scene/input/KeyCode;
    sget-object v7, Ljavafx/scene/input/KeyCombination$ModifierValue;->UP:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v2, v7

    .line 601
    .local v2, "modifierValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v7, v0

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_4

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 602
    .local v6, "modifier":Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v7, v6

    if-nez v7, :cond_0

    .line 603
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Modifier must not be null!"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 606
    :cond_0
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/input/KeyCombination$Modifier;->getKey()Ljavafx/scene/input/KeyCode;

    move-result-object v7

    move-object v8, v1

    if-ne v7, v8, :cond_3

    .line 607
    move-object v7, v2

    sget-object v8, Ljavafx/scene/input/KeyCombination$ModifierValue;->UP:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-eq v7, v8, :cond_2

    .line 608
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    .line 609
    invoke-virtual {v9}, Ljavafx/scene/input/KeyCombination$Modifier;->getValue()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v9

    move-object v10, v2

    if-eq v9, v10, :cond_1

    const-string v9, "Conflicting modifiers specified!"

    :goto_1
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const-string v9, "Duplicate modifiers specified!"

    goto :goto_1

    .line 614
    :cond_2
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/input/KeyCombination$Modifier;->getValue()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v7

    move-object v2, v7

    .line 601
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 618
    .end local v6    # "modifier":Ljavafx/scene/input/KeyCombination$Modifier;
    :cond_4
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "modifiers":[Ljavafx/scene/input/KeyCombination$Modifier;
    return-object v0
.end method

.method public static keyCombination(Ljava/lang/String;)Ljavafx/scene/input/KeyCombination;
    .locals 2

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/input/KeyCombination;->valueOf(Ljava/lang/String;)Ljavafx/scene/input/KeyCombination;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method private static normalizeToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "token":Ljava/lang/String;
    move-object v7, v0

    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 623
    .local v1, "words":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v7

    .line 625
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v7, v1

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 626
    .local v6, "word":Ljava/lang/String;
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 627
    move-object v7, v2

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 630
    :cond_0
    move-object v7, v2

    move-object v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 631
    move-object v7, v2

    move-object v8, v6

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 625
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 634
    .end local v6    # "word":Ljava/lang/String;
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "token":Ljava/lang/String;
    return-object v0
.end method

.method private static resolveModifierValue(Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;)Ljavafx/scene/input/KeyCombination$ModifierValue;
    .locals 4

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "firstValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v1, p1

    .local v1, "secondValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v2, v3, :cond_1

    .line 576
    :cond_0
    sget-object v2, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v0, v2

    .line 584
    .end local v0    # "firstValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    :goto_0
    return-object v0

    .line 579
    .restart local v0    # "firstValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    :cond_1
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-eq v2, v3, :cond_2

    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v2, v3, :cond_3

    .line 581
    :cond_2
    sget-object v2, Ljavafx/scene/input/KeyCombination$ModifierValue;->ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v0, v2

    goto :goto_0

    .line 584
    :cond_3
    sget-object v2, Ljavafx/scene/input/KeyCombination$ModifierValue;->UP:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v0, v2

    goto :goto_0
.end method

.method private static splitName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 21

    .prologue
    .line 638
    move-object/from16 v1, p0

    .local v1, "name":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v13

    .line 639
    .local v2, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v13, v1

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    move-object v3, v13

    .line 641
    .local v3, "chars":[C
    const/4 v13, 0x0

    move v4, v13

    .line 642
    .local v4, "STATE_BASIC":I
    const/4 v13, 0x1

    move v5, v13

    .line 643
    .local v5, "STATE_WHITESPACE":I
    const/4 v13, 0x2

    move v6, v13

    .line 644
    .local v6, "STATE_SEPARATOR":I
    const/4 v13, 0x3

    move v7, v13

    .line 646
    .local v7, "STATE_QUOTED":I
    const/4 v13, 0x0

    move v8, v13

    .line 647
    .local v8, "state":I
    const/4 v13, 0x0

    move v9, v13

    .line 648
    .local v9, "tokenStart":I
    const/4 v13, -0x1

    move v10, v13

    .line 650
    .local v10, "tokenEnd":I
    const/4 v13, 0x0

    move v11, v13

    .local v11, "i":I
    :goto_0
    move v13, v11

    move-object v14, v3

    array-length v14, v14

    if-ge v13, v14, :cond_4

    .line 651
    move-object v13, v3

    move v14, v11

    aget-char v13, v13, v14

    move v12, v13

    .line 652
    .local v12, "c":C
    move v13, v8

    packed-switch v13, :pswitch_data_0

    .line 650
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 654
    :pswitch_0
    move v13, v12

    sparse-switch v13, :sswitch_data_0

    .line 674
    goto :goto_1

    .line 661
    :sswitch_0
    move v13, v11

    move v10, v13

    .line 662
    const/4 v13, 0x1

    move v8, v13

    .line 663
    goto :goto_1

    .line 665
    :sswitch_1
    move v13, v11

    move v10, v13

    .line 666
    const/4 v13, 0x2

    move v8, v13

    .line 667
    goto :goto_1

    .line 669
    :sswitch_2
    move v13, v11

    if-eqz v13, :cond_1

    move-object v13, v3

    move v14, v11

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget-char v13, v13, v14

    const/16 v14, 0x5c

    if-eq v13, v14, :cond_0

    .line 670
    :cond_1
    const/4 v13, 0x3

    move v8, v13

    goto :goto_1

    .line 678
    :pswitch_1
    move v13, v12

    sparse-switch v13, :sswitch_data_1

    .line 694
    const/4 v13, 0x0

    move v8, v13

    .line 695
    const/4 v13, -0x1

    move v10, v13

    .line 696
    goto :goto_1

    .line 685
    :sswitch_3
    goto :goto_1

    .line 687
    :sswitch_4
    const/4 v13, 0x2

    move v8, v13

    .line 688
    goto :goto_1

    .line 690
    :sswitch_5
    const/4 v13, 0x3

    move v8, v13

    .line 691
    const/4 v13, -0x1

    move v10, v13

    .line 692
    goto :goto_1

    .line 700
    :pswitch_2
    move v13, v12

    sparse-switch v13, :sswitch_data_2

    .line 712
    move v13, v10

    move v14, v9

    if-gt v13, v14, :cond_2

    .line 713
    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot parse key binding "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 707
    :sswitch_6
    goto :goto_1

    .line 709
    :sswitch_7
    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot parse key binding "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 716
    :cond_2
    move-object v13, v2

    new-instance v14, Ljava/lang/String;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v3

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v9

    sub-int v18, v18, v19

    invoke-direct/range {v15 .. v18}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 718
    move v13, v11

    move v9, v13

    .line 719
    const/4 v13, -0x1

    move v10, v13

    .line 720
    move v13, v12

    const/16 v14, 0x27

    if-ne v13, v14, :cond_3

    const/4 v13, 0x3

    :goto_2
    move v8, v13

    .line 721
    goto/16 :goto_1

    .line 720
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 725
    :pswitch_3
    move v13, v12

    const/16 v14, 0x27

    if-ne v13, v14, :cond_0

    move-object v13, v3

    move v14, v11

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget-char v13, v13, v14

    const/16 v14, 0x5c

    if-eq v13, v14, :cond_0

    .line 726
    const/4 v13, 0x0

    move v8, v13

    goto/16 :goto_1

    .line 732
    .end local v12    # "c":C
    :cond_4
    move v13, v8

    packed-switch v13, :pswitch_data_1

    .line 744
    :goto_3
    move-object v13, v2

    move-object v14, v2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object v1, v13

    .end local v1    # "name":Ljava/lang/String;
    return-object v1

    .line 735
    .restart local v1    # "name":Ljava/lang/String;
    :pswitch_4
    move-object v13, v2

    new-instance v14, Ljava/lang/String;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v3

    move/from16 v17, v9

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v19, v9

    sub-int v18, v18, v19

    invoke-direct/range {v15 .. v18}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 737
    goto :goto_3

    .line 740
    :pswitch_5
    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot parse key binding "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 654
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x27 -> :sswitch_2
        0x2b -> :sswitch_1
    .end sparse-switch

    .line 678
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0x20 -> :sswitch_3
        0x27 -> :sswitch_5
        0x2b -> :sswitch_4
    .end sparse-switch

    .line 700
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_6
        0xa -> :sswitch_6
        0xb -> :sswitch_6
        0xc -> :sswitch_6
        0xd -> :sswitch_6
        0x20 -> :sswitch_6
        0x2b -> :sswitch_7
    .end sparse-switch

    .line 732
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static test(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Z)Z
    .locals 8

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "testedModifierKey":Ljavafx/scene/input/KeyCode;
    move-object v1, p1

    .local v1, "testedModifierValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v2, p2

    .local v2, "shortcutModifierKey":Ljavafx/scene/input/KeyCode;
    move-object v3, p3

    .local v3, "shortcutModifierValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move v4, p4

    .local v4, "isKeyDown":Z
    move-object v6, v0

    move-object v7, v2

    if-ne v6, v7, :cond_0

    move-object v6, v1

    move-object v7, v3

    .line 548
    invoke-static {v6, v7}, Ljavafx/scene/input/KeyCombination;->resolveModifierValue(Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;)Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v6

    :goto_0
    move-object v5, v6

    .line 552
    .local v5, "finalModifierValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v6, v5

    move v7, v4

    invoke-static {v6, v7}, Ljavafx/scene/input/KeyCombination;->test(Ljavafx/scene/input/KeyCombination$ModifierValue;Z)Z

    move-result v6

    move v0, v6

    .end local v0    # "testedModifierKey":Ljavafx/scene/input/KeyCode;
    return v0

    .line 548
    .end local v5    # "finalModifierValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    .restart local v0    # "testedModifierKey":Ljavafx/scene/input/KeyCode;
    :cond_0
    move-object v6, v1

    goto :goto_0
.end method

.method private static test(Ljavafx/scene/input/KeyCombination$ModifierValue;Z)Z
    .locals 4

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "modifierValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move v1, p1

    .local v1, "isDown":Z
    sget-object v2, Ljavafx/scene/input/KeyCombination$2;->$SwitchMap$javafx$scene$input$KeyCombination$ModifierValue:[I

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCombination$ModifierValue;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 567
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "modifierValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    :goto_0
    return v0

    .line 560
    .restart local v0    # "modifierValue":Ljavafx/scene/input/KeyCombination$ModifierValue;
    :pswitch_0
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 563
    :pswitch_1
    move v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/input/KeyCombination;
    .locals 16

    .prologue
    .line 388
    move-object/from16 v0, p0

    .local v0, "value":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v11

    .line 390
    .local v1, "modifiers":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/input/KeyCombination$Modifier;>;"
    move-object v11, v0

    invoke-static {v11}, Ljavafx/scene/input/KeyCombination;->splitName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 392
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v11, 0x0

    move-object v3, v11

    .line 393
    .local v3, "keyCode":Ljavafx/scene/input/KeyCode;
    const/4 v11, 0x0

    move-object v4, v11

    .line 394
    .local v4, "keyCharacter":Ljava/lang/String;
    move-object v11, v2

    move-object v5, v11

    move-object v11, v5

    array-length v11, v11

    move v6, v11

    const/4 v11, 0x0

    move v7, v11

    :goto_0
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_7

    move-object v11, v5

    move v12, v7

    aget-object v11, v11, v12

    move-object v8, v11

    .line 396
    .local v8, "token":Ljava/lang/String;
    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_3

    move-object v11, v8

    const/4 v12, 0x0

    .line 397
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x27

    if-ne v11, v12, :cond_3

    move-object v11, v8

    move-object v12, v8

    .line 398
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x27

    if-ne v11, v12, :cond_3

    .line 399
    move-object v11, v3

    if-nez v11, :cond_0

    move-object v11, v4

    if-eqz v11, :cond_1

    .line 400
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot parse key binding "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 404
    :cond_1
    move-object v11, v8

    const/4 v12, 0x1

    move-object v13, v8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\\'"

    const-string v13, "\'"

    .line 405
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 394
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 409
    :cond_3
    move-object v11, v8

    invoke-static {v11}, Ljavafx/scene/input/KeyCombination;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 411
    .local v9, "normalizedToken":Ljava/lang/String;
    move-object v11, v9

    invoke-static {v11}, Ljavafx/scene/input/KeyCombination;->getModifier(Ljava/lang/String;)Ljavafx/scene/input/KeyCombination$Modifier;

    move-result-object v11

    move-object v10, v11

    .line 412
    .local v10, "modifier":Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v11, v10

    if-eqz v11, :cond_4

    .line 413
    move-object v11, v1

    move-object v12, v10

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 414
    goto :goto_1

    .line 417
    :cond_4
    move-object v11, v3

    if-nez v11, :cond_5

    move-object v11, v4

    if-eqz v11, :cond_6

    .line 418
    :cond_5
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot parse key binding "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 422
    :cond_6
    move-object v11, v9

    invoke-static {v11}, Ljavafx/scene/input/KeyCode;->getKeyCode(Ljava/lang/String;)Ljavafx/scene/input/KeyCode;

    move-result-object v11

    move-object v3, v11

    .line 423
    move-object v11, v3

    if-nez v11, :cond_2

    .line 424
    move-object v11, v8

    move-object v4, v11

    goto :goto_1

    .line 428
    .end local v8    # "token":Ljava/lang/String;
    .end local v9    # "normalizedToken":Ljava/lang/String;
    .end local v10    # "modifier":Ljavafx/scene/input/KeyCombination$Modifier;
    :cond_7
    move-object v11, v3

    if-nez v11, :cond_8

    move-object v11, v4

    if-nez v11, :cond_8

    .line 429
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot parse key binding "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 433
    :cond_8
    move-object v11, v1

    move-object v12, v1

    .line 434
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljavafx/scene/input/KeyCombination$Modifier;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v5, v11

    .line 435
    .local v5, "modifierArray":[Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v11, v3

    if-eqz v11, :cond_9

    new-instance v11, Ljavafx/scene/input/KeyCodeCombination;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v3

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Ljavafx/scene/input/KeyCodeCombination;-><init>(Ljavafx/scene/input/KeyCode;[Ljavafx/scene/input/KeyCombination$Modifier;)V

    :goto_2
    move-object v0, v11

    .end local v0    # "value":Ljava/lang/String;
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_9
    new-instance v11, Ljavafx/scene/input/KeyCharacterCombination;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v4

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Ljavafx/scene/input/KeyCharacterCombination;-><init>(Ljava/lang/String;[Ljavafx/scene/input/KeyCombination$Modifier;)V

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/input/KeyCombination;

    if-nez v3, :cond_0

    .line 332
    const/4 v3, 0x0

    move v0, v3

    .line 336
    .end local v0    # "this":Ljavafx/scene/input/KeyCombination;
    :goto_0
    return v0

    .line 335
    .restart local v0    # "this":Ljavafx/scene/input/KeyCombination;
    :cond_0
    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyCombination;

    move-object v2, v3

    .line 336
    .local v2, "other":Ljavafx/scene/input/KeyCombination;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/KeyCombination;->shift:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->shift:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/KeyCombination;->control:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->control:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/KeyCombination;->alt:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->alt:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/KeyCombination;->meta:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->meta:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/KeyCombination;->shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final getAlt()Ljavafx/scene/input/KeyCombination$ModifierValue;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/KeyCombination;->alt:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination;
    return-object v0
.end method

.method public final getControl()Ljavafx/scene/input/KeyCombination$ModifierValue;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/KeyCombination;->control:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination;
    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 287
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 291
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCombination;->getControl()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v2, v3, :cond_0

    .line 292
    move-object v2, v1

    const-string v3, "\u2303"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 294
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCombination;->getAlt()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v2, v3, :cond_1

    .line 295
    move-object v2, v1

    const-string v3, "\u2325"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 297
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCombination;->getShift()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v2, v3, :cond_2

    .line 298
    move-object v2, v1

    const-string v3, "\u21e7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 300
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCombination;->getMeta()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-eq v2, v3, :cond_3

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCombination;->getShortcut()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v2, v3, :cond_4

    .line 301
    :cond_3
    move-object v2, v1

    const-string v3, "\u2318"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 320
    :cond_4
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination;
    return-object v0

    .line 306
    .restart local v0    # "this":Ljavafx/scene/input/KeyCombination;
    :cond_5
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCombination;->getControl()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-eq v2, v3, :cond_6

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCombination;->getShortcut()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v2, v3, :cond_7

    .line 307
    :cond_6
    move-object v2, v1

    const-string v3, "Ctrl+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 309
    :cond_7
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCombination;->getAlt()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v2, v3, :cond_8

    .line 310
    move-object v2, v1

    const-string v3, "Alt+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    :cond_8
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCombination;->getShift()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v2, v3, :cond_9

    .line 313
    move-object v2, v1

    const-string v3, "Shift+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 315
    :cond_9
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCombination;->getMeta()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v2, v3, :cond_4

    .line 316
    move-object v2, v1

    const-string v3, "Meta+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0
.end method

.method public final getMeta()Ljavafx/scene/input/KeyCombination$ModifierValue;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/KeyCombination;->meta:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 272
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/input/KeyCombination;->addModifiersIntoString(Ljava/lang/StringBuilder;)V

    .line 274
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination;
    return-object v0
.end method

.method public final getShift()Ljavafx/scene/input/KeyCombination$ModifierValue;
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/KeyCombination;->shift:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination;
    return-object v0
.end method

.method public final getShortcut()Ljavafx/scene/input/KeyCombination$ModifierValue;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/KeyCombination;->shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    const/4 v2, 0x7

    move v1, v2

    .line 352
    .local v1, "hash":I
    const/16 v2, 0x17

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/KeyCombination;->shift:Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCombination$ModifierValue;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 353
    const/16 v2, 0x17

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/KeyCombination;->control:Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCombination$ModifierValue;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 354
    const/16 v2, 0x17

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/KeyCombination;->alt:Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCombination$ModifierValue;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 355
    const/16 v2, 0x17

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/KeyCombination;->meta:Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCombination$ModifierValue;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 356
    const/16 v2, 0x17

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/KeyCombination;->shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCombination$ModifierValue;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 358
    move v2, v1

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination;
    return v0
.end method

.method public match(Ljavafx/scene/input/KeyEvent;)Z
    .locals 8

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/tk/Toolkit;->getPlatformShortcutKey()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    move-object v2, v3

    .line 232
    .local v2, "shortcutKey":Ljavafx/scene/input/KeyCode;
    sget-object v3, Ljavafx/scene/input/KeyCode;->SHIFT:Ljavafx/scene/input/KeyCode;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->shift:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/input/KeyCombination;->shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v7, v1

    .line 233
    invoke-virtual {v7}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v7

    .line 232
    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/input/KeyCombination;->test(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljavafx/scene/input/KeyCode;->CONTROL:Ljavafx/scene/input/KeyCode;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->control:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/input/KeyCombination;->shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v7, v1

    .line 235
    invoke-virtual {v7}, Ljavafx/scene/input/KeyEvent;->isControlDown()Z

    move-result v7

    .line 234
    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/input/KeyCombination;->test(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljavafx/scene/input/KeyCode;->ALT:Ljavafx/scene/input/KeyCode;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->alt:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/input/KeyCombination;->shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v7, v1

    .line 237
    invoke-virtual {v7}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v7

    .line 236
    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/input/KeyCombination;->test(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljavafx/scene/input/KeyCode;->META:Ljavafx/scene/input/KeyCode;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/KeyCombination;->meta:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/input/KeyCombination;->shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v7, v1

    .line 239
    invoke-virtual {v7}, Ljavafx/scene/input/KeyEvent;->isMetaDown()Z

    move-result v7

    .line 238
    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/input/KeyCombination;->test(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination;
    return v0

    .restart local v0    # "this":Ljavafx/scene/input/KeyCombination;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/KeyCombination;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination;
    return-object v0
.end method
