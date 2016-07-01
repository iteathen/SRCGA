.class final enum Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;
.super Ljava/lang/Enum;
.source "TextFieldBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TextInputTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

.field public static final enum EDITABLE_COMBO:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

.field public static final enum PASSWORD_FIELD:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

.field public static final enum TEXT_AREA:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

.field public static final enum TEXT_FIELD:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 446
    new-instance v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TEXT_FIELD"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->TEXT_FIELD:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    .line 447
    new-instance v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PASSWORD_FIELD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->PASSWORD_FIELD:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    .line 448
    new-instance v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EDITABLE_COMBO"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->EDITABLE_COMBO:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    .line 449
    new-instance v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TEXT_AREA"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->TEXT_AREA:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    .line 445
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->TEXT_FIELD:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->PASSWORD_FIELD:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->EDITABLE_COMBO:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->TEXT_AREA:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->$VALUES:[Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

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
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;
    .locals 3

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->$VALUES:[Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    invoke-virtual {v0}, [Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    return-object v0
.end method
