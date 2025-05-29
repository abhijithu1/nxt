import { auth } from "@clerk/nextjs/server";

export const getRole = async () => {
  const {  sessionClaims } = await auth();
  return (sessionClaims?.metadata as {role?:string})?.role;
};

export const getUserId = async () => {
    const { userId, sessionClaims } = await auth();
    return userId;
  };