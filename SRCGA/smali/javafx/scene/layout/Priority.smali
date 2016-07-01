.class public final enum Ljavafx/scene/layout/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/layout/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/layout/Priority;

.field public static final enum ALWAYS:Ljavafx/scene/layout/Priority;

.field public static final enum NEVER:Ljavafx/scene/layout/Priority;

.field public static final enum SOMETIMES:Ljavafx/scene/layout/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    new-instance v0, Ljavafx/scene/layout/Priority;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ALWAYS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/layout/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    .line 49
    new-instance v0, Ljavafx/scene/layout/Priority;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SOMETIMES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/layout/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    .line 55
    new-instance v0, Ljavafx/scene/layout/Priority;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NEVER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/layout/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/scene/layout/Priority;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/layout/Priority;->$VALUES:[Ljavafx/scene/layout/Priority;

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
    .line 35
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Priority;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static max(Ljavafx/scene/layout/Priority;Ljavafx/scene/layout/Priority;)Ljavafx/scene/layout/Priority;
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "a":Ljavafx/scene/layout/Priority;
    move-object v1, p1

    .local v1, "b":Ljavafx/scene/layout/Priority;
    move-object v2, v0

    sget-object v3, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    if-ne v2, v3, :cond_1

    .line 65
    :cond_0
    sget-object v2, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    move-object v0, v2

    .line 69
    .end local v0    # "a":Ljavafx/scene/layout/Priority;
    :goto_0
    return-object v0

    .line 66
    .restart local v0    # "a":Ljavafx/scene/layout/Priority;
    :cond_1
    move-object v2, v0

    sget-object v3, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    if-eq v2, v3, :cond_2

    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    if-ne v2, v3, :cond_3

    .line 67
    :cond_2
    sget-object v2, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    move-object v0, v2

    goto :goto_0

    .line 69
    :cond_3
    sget-object v2, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    move-object v0, v2

    goto :goto_0
.end method

.method public static min(Ljavafx/scene/layout/Priority;Ljavafx/scene/layout/Priority;)Ljavafx/scene/layout/Priority;
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "a":Ljavafx/scene/layout/Priority;
    move-object v1, p1

    .local v1, "b":Ljavafx/scene/layout/Priority;
    move-object v2, v0

    sget-object v3, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    if-ne v2, v3, :cond_1

    .line 81
    :cond_0
    sget-object v2, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    move-object v0, v2

    .line 85
    .end local v0    # "a":Ljavafx/scene/layout/Priority;
    :goto_0
    return-object v0

    .line 82
    .restart local v0    # "a":Ljavafx/scene/layout/Priority;
    :cond_1
    move-object v2, v0

    sget-object v3, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    if-eq v2, v3, :cond_2

    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    if-ne v2, v3, :cond_3

    .line 83
    :cond_2
    sget-object v2, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    move-object v0, v2

    goto :goto_0

    .line 85
    :cond_3
    sget-object v2, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    move-object v0, v2

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/layout/Priority;
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/layout/Priority;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/layout/Priority;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/layout/Priority;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Ljavafx/scene/layout/Priority;->$VALUES:[Ljavafx/scene/layout/Priority;

    invoke-virtual {v0}, [Ljavafx/scene/layout/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/layout/Priority;

    return-object v0
.end method
