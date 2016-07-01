.class public final enum Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
.super Ljava/lang/Enum;
.source "OptionalBoolean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

.field public static final enum ANY:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

.field public static final enum FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

.field public static final enum TRUE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    new-instance v0, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TRUE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->TRUE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 33
    new-instance v0, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FALSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 34
    new-instance v0, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ANY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->ANY:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->TRUE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->ANY:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->$VALUES:[Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

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
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->$VALUES:[Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    invoke-virtual {v0}, [Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    return-object v0
.end method


# virtual methods
.method public equals(Z)Z
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    move v1, p1

    .local v1, "b":Z
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->ANY:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 40
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    :goto_0
    return v0

    .line 38
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->TRUE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 39
    :cond_1
    move v2, v1

    if-nez v2, :cond_2

    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 40
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
