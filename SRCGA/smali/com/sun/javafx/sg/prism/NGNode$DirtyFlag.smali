.class public final enum Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;
.super Ljava/lang/Enum;
.source "NGNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DirtyFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

.field public static final enum CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

.field public static final enum DIRTY:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

.field public static final enum DIRTY_BY_TRANSLATION:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 90
    new-instance v0, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CLEAN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    .line 92
    new-instance v0, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DIRTY_BY_TRANSLATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY_BY_TRANSLATION:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    .line 93
    new-instance v0, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DIRTY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY_BY_TRANSLATION:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->$VALUES:[Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

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
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->$VALUES:[Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    invoke-virtual {v0}, [Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    return-object v0
.end method
