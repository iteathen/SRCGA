.class public final enum Ljavafx/animation/KeyValue$Type;
.super Ljava/lang/Enum;
.source "KeyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/KeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/animation/KeyValue$Type;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/animation/KeyValue$Type;

.field public static final enum BOOLEAN:Ljavafx/animation/KeyValue$Type;

.field public static final enum DOUBLE:Ljavafx/animation/KeyValue$Type;

.field public static final enum FLOAT:Ljavafx/animation/KeyValue$Type;

.field public static final enum INTEGER:Ljavafx/animation/KeyValue$Type;

.field public static final enum LONG:Ljavafx/animation/KeyValue$Type;

.field public static final enum OBJECT:Ljavafx/animation/KeyValue$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 74
    new-instance v0, Ljavafx/animation/KeyValue$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BOOLEAN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/animation/KeyValue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/KeyValue$Type;->BOOLEAN:Ljavafx/animation/KeyValue$Type;

    new-instance v0, Ljavafx/animation/KeyValue$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DOUBLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/animation/KeyValue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/KeyValue$Type;->DOUBLE:Ljavafx/animation/KeyValue$Type;

    new-instance v0, Ljavafx/animation/KeyValue$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FLOAT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/animation/KeyValue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/KeyValue$Type;->FLOAT:Ljavafx/animation/KeyValue$Type;

    new-instance v0, Ljavafx/animation/KeyValue$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INTEGER"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/animation/KeyValue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/KeyValue$Type;->INTEGER:Ljavafx/animation/KeyValue$Type;

    new-instance v0, Ljavafx/animation/KeyValue$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LONG"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/animation/KeyValue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/KeyValue$Type;->LONG:Ljavafx/animation/KeyValue$Type;

    new-instance v0, Ljavafx/animation/KeyValue$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OBJECT"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljavafx/animation/KeyValue$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/KeyValue$Type;->OBJECT:Ljavafx/animation/KeyValue$Type;

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [Ljavafx/animation/KeyValue$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/animation/KeyValue$Type;->BOOLEAN:Ljavafx/animation/KeyValue$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/animation/KeyValue$Type;->DOUBLE:Ljavafx/animation/KeyValue$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/animation/KeyValue$Type;->FLOAT:Ljavafx/animation/KeyValue$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/animation/KeyValue$Type;->INTEGER:Ljavafx/animation/KeyValue$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/animation/KeyValue$Type;->LONG:Ljavafx/animation/KeyValue$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljavafx/animation/KeyValue$Type;->OBJECT:Ljavafx/animation/KeyValue$Type;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/animation/KeyValue$Type;->$VALUES:[Ljavafx/animation/KeyValue$Type;

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
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/KeyValue$Type;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/animation/KeyValue$Type;
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/animation/KeyValue$Type;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/animation/KeyValue$Type;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/animation/KeyValue$Type;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Ljavafx/animation/KeyValue$Type;->$VALUES:[Ljavafx/animation/KeyValue$Type;

    invoke-virtual {v0}, [Ljavafx/animation/KeyValue$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/animation/KeyValue$Type;

    return-object v0
.end method
